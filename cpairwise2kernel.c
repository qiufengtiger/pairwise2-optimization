/* Copyright 2002 by Jeffrey Chang.
 * Copyright 2016, 2019 by Markus Piotrowski.
 * All rights reserved.
 *
 * This file is part of the Biopython distribution and governed by your
 * choice of the "Biopython License Agreement" or the "BSD 3-Clause License".
 * Please see the LICENSE file that should have been included as part of this
 * package.
 *
 * cpairwise2module.c
 * Created 30 Sep 2001
 *
 * Optimized C routines that complement pairwise2.py.
 */

#include "Python.h"
#include "immintrin.h"

/* Kernel defines */
#define MATCH 1
#define MISMATCH -1
#define GAP -1

#define _PRECISION 1000
#define rint(x) (int)((x)*_PRECISION+0.5)

static int max(int a, int b, int c)
{
    return a > b ? (a > c ? a : c) : (b > c ? b : c);
}

/* Functions in this module. */

#if PY_MAJOR_VERSION >= 3
static PyObject* _create_bytes_object(PyObject* o)
{
    PyObject* b;
    if (PyBytes_Check(o)) {
        return o;
    }
    if (!PyUnicode_Check(o)) {
        return NULL;
    }
    b = PyUnicode_AsASCIIString(o);
    if (!b) {
        PyErr_Clear();
        return NULL;
    }
    return b;
}
#endif

/* This function is a more-or-less straightforward port of the
 * equivalent function in pairwise2. Please see there for algorithm
 * documentation.
 */
static PyObject *cpairwise2__make_score_matrix_fast(PyObject *self,
                                                    PyObject *args)
{
    int row, col;
    PyObject *py_sequenceA, *py_sequenceB, *py_match_fn;
#if PY_MAJOR_VERSION >= 3
    PyObject *py_bytesA, *py_bytesB;
#endif
    char *sequenceA=NULL, *sequenceB=NULL;
    int use_sequence_cstring;
    double open_A, extend_A, open_B, extend_B;
    int penalize_extend_when_opening, penalize_end_gaps_A, penalize_end_gaps_B;
    int align_globally, score_only;

    PyObject *py_match=NULL, *py_mismatch=NULL;
    double first_A_gap, first_B_gap;
    double match, mismatch;
    double score;
    double best_score = 0;
    double local_max_score = 0;
    int use_match_mismatch_scores;
    int lenA, lenB;
    double *score_matrix = NULL;
    unsigned char *trace_matrix = NULL;
    PyObject *py_score_matrix=NULL, *py_trace_matrix=NULL;

    // double *col_cache_score = NULL;
    PyObject *py_retval = NULL;

    if(!PyArg_ParseTuple(args, "OOOddddi(ii)ii", &py_sequenceA, &py_sequenceB,
                         &py_match_fn, &open_A, &extend_A, &open_B, &extend_B,
                         &penalize_extend_when_opening,
                         &penalize_end_gaps_A, &penalize_end_gaps_B,
                         &align_globally, &score_only))
        return NULL;
    if(!PySequence_Check(py_sequenceA) || !PySequence_Check(py_sequenceB)) {
        PyErr_SetString(PyExc_TypeError,
                        "py_sequenceA and py_sequenceB should be sequences.");
        return NULL;
    }

    /* Optimize for the common case. Check to see if py_sequenceA and
       py_sequenceB are strings.  If they are, use the c string
       representation. */
#if PY_MAJOR_VERSION < 3
    use_sequence_cstring = 0;
    if(PyString_Check(py_sequenceA) && PyString_Check(py_sequenceB)) {
        sequenceA = PyString_AS_STRING(py_sequenceA);
        sequenceB = PyString_AS_STRING(py_sequenceB);
        use_sequence_cstring = 1;
    }
#else
    py_bytesA = _create_bytes_object(py_sequenceA);
    py_bytesB = _create_bytes_object(py_sequenceB);
    if (py_bytesA && py_bytesB) {
        sequenceA = PyBytes_AS_STRING(py_bytesA);
        sequenceB = PyBytes_AS_STRING(py_bytesB);
        use_sequence_cstring = 1;
    }
    else {
        Py_XDECREF(py_bytesA);
        Py_XDECREF(py_bytesB);
        use_sequence_cstring = 0;
    }
#endif

    if(!PyCallable_Check(py_match_fn)) {
        PyErr_SetString(PyExc_TypeError, "py_match_fn must be callable.");
        return NULL;
    }
    /* Optimize for the common case. Check to see if py_match_fn is
       an identity_match. If so, pull out the match and mismatch
       member variables and calculate the scores myself. */
    match = mismatch = 0;
    use_match_mismatch_scores = 0;
    if(!(py_match = PyObject_GetAttrString(py_match_fn, "match")))
        goto cleanup_after_py_match_fn;
    match = PyFloat_AsDouble(py_match);
    if(match==-1.0 && PyErr_Occurred())
        goto cleanup_after_py_match_fn;
    if(!(py_mismatch = PyObject_GetAttrString(py_match_fn, "mismatch")))
        goto cleanup_after_py_match_fn;
    mismatch = PyFloat_AsDouble(py_mismatch);
    if(mismatch==-1.0 && PyErr_Occurred())
        goto cleanup_after_py_match_fn;
    use_match_mismatch_scores = 1;

 cleanup_after_py_match_fn:
    if(PyErr_Occurred())
        PyErr_Clear();
    if(py_match) {
        Py_DECREF(py_match);
    }
    if(py_mismatch) {
        Py_DECREF(py_mismatch);
    }

    /* Allocate matrices for storing the results and initialize first row and col. */
    lenA = PySequence_Length(py_sequenceA);
    lenB = PySequence_Length(py_sequenceB);
    score_matrix = malloc((lenA+1)*(lenB+1)*sizeof(*score_matrix));
    if(!score_matrix) {
        PyErr_SetString(PyExc_MemoryError, "Out of memory");
        goto _cleanup_make_score_matrix_fast;
    }
    
    /* Kernel starts here */

    int i = 0;
    int j = 0;
    int k = 0;
    int m = lenA + 1;
    int n = lenB + 1;
    double *packed, *a, *b;

    // kernel size: 32 doubles
    int size = 32;
    int num_SIMD_in_kernel = size / 4;

    posix_memalign((void **)&packed, 64, (2 * m - 1) * n * sizeof(double));
    posix_memalign((void **)&a, 64, (m - 1) * sizeof(double));
    posix_memalign((void **)&b, 64, (n - 1) * sizeof(double));

    // preparing work: align char to 64 bit
    for (int i = 0; i < m - 1; i++) {
        a[i] = (double)sequenceA[i];
    }

    for (int i = 0; i < n - 1; i++) {
        b[i] = (double)sequenceB[i];
    }

    double match_point[4] = {MATCH - GAP, MATCH - GAP, MATCH - GAP, MATCH - GAP};
    double mismatch_point[4] = {MISMATCH - GAP, MISMATCH - GAP, MISMATCH - GAP, MISMATCH - GAP};
    double gap_point[4] = {GAP, GAP, GAP, GAP};

    __m256d MATCH_SCORE = _mm256_load_pd(match_point);
    __m256d MISMATCH_SCORE = _mm256_load_pd(mismatch_point);
    __m256d GAP_SCORE = _mm256_load_pd(gap_point);

    for (i = 0; i < 2 * m - 1; i ++) {
        for (j = 0; j < n; j ++) {
            packed[i * n + j] = 0;
        }
    }

    for (j = 0; j < n; j ++) {
        packed[j * n + j] = GAP * j;
    }
    for (i = 0; i < m; i ++) {
        packed[i * n] = GAP * i;
    }

    i = 0;
    j = 0;
    k = 0;

    for (j = 1; j < n; j += size) {
        i = j + 1;
        for (; i < j + size; i++) {
            for (k = j; k < i; k ++) {
                int old_i = i - k; // old i at original matrix
                int old_k = k; // old k
                double match_score = (a[old_i - 1] == b[old_k - 1]) ? MATCH : MISMATCH;
                packed[i * n + k] = max(
                    packed[(i - 2) * n + k - 1] + match_score,
                    packed[(i - 1) * n + k - 1] + GAP,
                    packed[(i - 1) * n + k] + GAP);
            }
        }

        for (; i < j + m; i ++) {
            // reindex: match_score start at s0 now
            int old_i_0 = i - j;
            int old_j_0 = j;
            for (int id = 1; id < num_SIMD_in_kernel + 1; id ++) {
                __m256d r0, r1;
                int indexing0 = (id * 4 - 1);
                int indexing1 = (id - 1) * 4;

                r0 = _mm256_load_pd(&a[old_i_0 - 1 - indexing0]);
                r0 = _mm256_permute4x64_pd(r0, 0b00011011);
                r1 = _mm256_load_pd(&b[old_j_0 - 1 + indexing1]);

                r0 = _mm256_cmp_pd(r0, r1, _CMP_EQ_OQ); 
                r1 = _mm256_and_pd(r0, MATCH_SCORE);
                r0 = _mm256_andnot_pd(r0, MISMATCH_SCORE);
                r0 = _mm256_or_pd(r0, r1);

                r1 = _mm256_loadu_pd(&packed[(i - 2) * n + j - 1 + indexing1]);
                r1 = _mm256_add_pd(r1, r0);
                r0 = _mm256_loadu_pd(&packed[(i - 1) * n + j - 1 + indexing1]);
                r1 = _mm256_max_pd(r0, r1);
                r0 = _mm256_loadu_pd(&packed[(i - 1) * n + j + indexing1]);
                r1 = _mm256_max_pd(r0, r1);
                r1 = _mm256_add_pd(r1, GAP_SCORE);

                _mm256_storeu_pd(&packed[i * n + (j + 0) + indexing1], r1);
            }
        }

        i = j + m;
        for (; i < j + m + size - 1; i ++) {
            for (k = 1 + i - m; k < j + size; k ++) {
                int old_i = i - k;
                int old_k = k;
                double match_score = (a[old_i - 1] == b[old_k - 1]) ? MATCH : MISMATCH;
                packed[i * n + k] = max(
                    packed[(i - 2) * n + k - 1] + match_score,
                    packed[(i - 1) * n + k - 1] + GAP,
                    packed[(i - 1) * n + k] + GAP);
            }
        }
    }


    /* repack to original matrix */

    for (i = 0; i < m; i ++) {
        for (j = 0; j < n; j ++) {
            int packed_i = i + j;
            score_matrix[i * n + j] = packed[packed_i * n + j];
        } 
    }

    free(packed);
    free(a);
    free(b);

    best_score = score_matrix[lenA * n + lenB];

    /* Save results */
    FILE *fp;    
    if( (fp=fopen("./result/kernel_matrix.txt","w")) == NULL ){
        printf("Cannot open file kernel, exit!\n");
        exit(1);
    }

    fprintf(fp, "%03.0f\n", best_score);
    for (col=0; col <= lenB; col ++) {
        for (row = 0; row <= lenA; row ++) {
            fprintf(fp,"%03.0f ",score_matrix[row * (lenB + 1) + col]); 
        }
        fprintf(fp,"\n");
    }
    fclose(fp);

    /* Kernel ends */

    /* Save the score and traceback matrices into real python objects. */
	if(!score_only) {
		if(!(py_score_matrix = PyList_New(lenA+1)))
			goto _cleanup_make_score_matrix_fast;
		if(!(py_trace_matrix = PyList_New(lenA+1)))
			goto _cleanup_make_score_matrix_fast;

		for(row=0; row<=lenA; row++) {
			PyObject *py_score_row, *py_trace_row;
			if(!(py_score_row = PyList_New(lenB+1)))
				goto _cleanup_make_score_matrix_fast;
			PyList_SET_ITEM(py_score_matrix, row, py_score_row);
			if(!(py_trace_row = PyList_New(lenB+1)))
				goto _cleanup_make_score_matrix_fast;
			PyList_SET_ITEM(py_trace_matrix, row, py_trace_row);

			for(col=0; col<=lenB; col++) {
				PyObject *py_score, *py_trace;
				int offset = row*(lenB+1) + col;

				/* Set py_score_matrix[row][col] to the score. */
				if(!(py_score = PyFloat_FromDouble(score_matrix[offset])))
					goto _cleanup_make_score_matrix_fast;
				PyList_SET_ITEM(py_score_row, col, py_score);

				/* Set py_trace_matrix[row][col] to a list of indexes.  On
				   the edges of the matrix (row or column is 0), the
				   matrix should be [None]. */
				if(!row || !col) {
					if(!(py_trace = Py_BuildValue("B", 1)))
						goto _cleanup_make_score_matrix_fast;
					Py_INCREF(Py_None);
					PyList_SET_ITEM(py_trace_row, col, Py_None);
				}
				else {
					if(!(py_trace = Py_BuildValue("B", trace_matrix[offset])))
						goto _cleanup_make_score_matrix_fast;
					PyList_SET_ITEM(py_trace_row, col, py_trace);

				}
			}
		}
	}
	else {
		py_score_matrix = PyList_New(1);
		py_trace_matrix = PyList_New(1);
	}
    py_retval = Py_BuildValue("(OOd)", py_score_matrix, py_trace_matrix, best_score);

 _cleanup_make_score_matrix_fast:
    if(score_matrix)
        free(score_matrix);
    if(trace_matrix)
        free(trace_matrix);
    if(py_score_matrix){
        Py_DECREF(py_score_matrix);
    }
    if(py_trace_matrix){
        Py_DECREF(py_trace_matrix);
    }

#if PY_MAJOR_VERSION >= 3
    if (py_bytesA != NULL && py_bytesA != py_sequenceA) Py_DECREF(py_bytesA);
    if (py_bytesB != NULL && py_bytesB != py_sequenceB) Py_DECREF(py_bytesB);
#endif

    return py_retval;
}

static PyObject *cpairwise2_rint(PyObject *self, PyObject *args,
                                 PyObject *keywds)
{
    double x;
    int precision = _PRECISION;
    int rint_x;

    static char *kwlist[] = {"x", "precision", NULL};

    if(!PyArg_ParseTupleAndKeywords(args, keywds, "d|l", kwlist,
                                    &x, &precision))
        return NULL;
    rint_x = (int)(x * precision + 0.5);
#if PY_MAJOR_VERSION >= 3
    return PyLong_FromLong((long)rint_x);
#else
    return PyInt_FromLong((long)rint_x);
#endif
}

/* Module definition stuff */

static PyMethodDef cpairwise2MethodsKernel[] = {
    {"_make_score_matrix_fast",
     (PyCFunction)cpairwise2__make_score_matrix_fast, METH_VARARGS, ""},
    {"rint", (PyCFunction)cpairwise2_rint, METH_VARARGS|METH_KEYWORDS, ""},
    {NULL, NULL, 0, NULL}
};

static char cpairwise2__doc__[] =
"Optimized C routines that complement pairwise2.py. These are called from within pairwise2.py.\n\
\n\
";

#if PY_MAJOR_VERSION >= 3

static struct PyModuleDef moduledef = {
        PyModuleDef_HEAD_INIT,
        "cpairwise2kernel",
        cpairwise2__doc__,
        -1,
        cpairwise2MethodsKernel,
        NULL,
        NULL,
        NULL,
        NULL
};

PyObject *
PyInit_cpairwise2kernel(void)

#else

void
/* for Windows: _declspec(dllexport) initcpairwise2(void) */
PyInit_cpairwise2kernel(void)
#endif

{
#if PY_MAJOR_VERSION >= 3
    PyObject* module = PyModule_Create(&moduledef);
    if (module==NULL) return NULL;
    return module;
#else
    (void) Py_InitModule3("cpairwise2kernel", cpairwise2MethodsKernel, cpairwise2__doc__);
#endif
}