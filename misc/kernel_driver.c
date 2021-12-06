#include <stdio.h>
#include <stdlib.h>
#include <math.h>
// #include <omp.h>
#include <time.h>

#include "immintrin.h"


#define MATCH 1
#define MISMATCH -1
#define GAP -1

//timing routine for reading the time stamp counter
static __inline__ unsigned long long rdtsc(void)
{
	unsigned hi, lo;
	__asm__ __volatile__("rdtsc"
		: "=a"(lo), "=d"(hi));
	return ((unsigned long long)lo) | (((unsigned long long)hi) << 32);
}

int max(int a, int b, int c)
{
	return a > b ? (a > c ? a : c) : (b > c ? b : c);
}

void kernel(
	int m,
	int n,
	double *restrict a,
	double *restrict b,
	double *restrict matrix) {

	int i = 0;
	int j = 0;
	int k = 0;
	int size = 8;
	int num_SIMD_in_kernel = size / 4;

	for (j = 1; j < n; j += size) {
		i = 1;
		for (; i < size; i++) {
			// k is in n dimension in prologue
			for (k = j; k < j + size - i + 1; k++) {
				double matchScore = a[i - 1] == b[k - 1] ? MATCH : MISMATCH;
				matrix[i * n + k] = max(matrix[(i - 1) * n + k - 1] + matchScore, matrix[(i - 1) * n + k] + GAP, matrix[i * n + k - 1] + GAP);
			}
		}
		for (; i < m; i++) {
			for (int id = 0; id < num_SIMD_in_kernel; id ++) {
				int start = id * 4;
				int row1 = i - start, col1 = j + start;
				int row2 = i - start - 1, col2 = j + start + 1;
				int row3 = i - start - 2, col3 = j + start + 2;
				int row4 = i - start - 3, col4 = j + start + 3;
				double s1 = a[row1 - 1] == b[col1 - 1] ? MATCH : MISMATCH;
				double s2 = a[row2 - 1] == b[col2 - 1] ? MATCH : MISMATCH;
				double s3 = a[row3 - 1] == b[col3 - 1] ? MATCH : MISMATCH;
				double s4 = a[row4 - 1] == b[col4 - 1] ? MATCH : MISMATCH;

				matrix[row1 * n + col1] = max(matrix[(row1 - 1) * n + col1 - 1] + s1, matrix[(row1 - 1) * n + col1] + GAP, matrix[row1 * n + col1 - 1] + GAP);
				matrix[row2 * n + col2] = max(matrix[(row2 - 1) * n + col2 - 1] + s2, matrix[(row2 - 1) * n + col2] + GAP, matrix[row2 * n + col2 - 1] + GAP);
				matrix[row3 * n + col3] = max(matrix[(row3 - 1) * n + col3 - 1] + s3, matrix[(row3 - 1) * n + col3] + GAP, matrix[row3 * n + col3 - 1] + GAP);
				matrix[row4 * n + col4] = max(matrix[(row4 - 1) * n + col4 - 1] + s4, matrix[(row4 - 1) * n + col4] + GAP, matrix[row4 * n + col4 - 1] + GAP);
			}
			
		}
		i = m - size + 1;
		for (; i < m; i++) {
			for (k = j + m - i; k < j + size; k++) {
				// int row = m - size + j, col = k;
				double matchScore = a[i - 1] == b[k - 1] ? MATCH : MISMATCH;
				matrix[i * n + k] = max(matrix[(i - 1) * n + k - 1] + matchScore, matrix[(i - 1) * n + k] + GAP, matrix[i * n + k - 1] + GAP);
			}
		}
	}
}

void SIMDkernel32packed(
	int m,
	int n,
	double *restrict a,
	double *restrict b,
	double *restrict packed) {

	double match_point[4] = {MATCH - GAP, MATCH - GAP, MATCH - GAP, MATCH - GAP};
	double mismatch_point[4] = {MISMATCH - GAP, MISMATCH - GAP, MISMATCH - GAP, MISMATCH - GAP};
	double gap_point[4] = {GAP, GAP, GAP, GAP};

	__m256d MATCH_SCORE = _mm256_load_pd(match_point);
	__m256d MISMATCH_SCORE = _mm256_load_pd(mismatch_point);
	__m256d GAP_SCORE = _mm256_load_pd(gap_point);

	

	// #pragma omp parallel num_threads(4)
	// {
	int i = 0;
	int j = 0;
	int k = 0;
	// change kernel size here
	int size = 32;
	int num_SIMD_in_kernel = size / 4;

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
	// }


	
}

void repack(int m, int n, double *restrict packed, double *restrict matrix) {
	int i = 0;
	int j = 0;
	for (i = 0; i < m; i ++) {
		for (j = 0; j < n; j ++) {
			int packed_i = i + j;
			matrix[i * n + j] = packed[packed_i * n + j];
		} 
	}
}

void naive(
	int m,
	int n,
	double *restrict a,
	double *restrict b,
	double *restrict matrix) {
	for (int i = 1; i < m; i++)
	{
		for (int j = 1; j < n; j++)
		{
			double matchScore = a[i - 1] == b[j - 1] ? MATCH : MISMATCH;
			matrix[i * n + j] = max(matrix[(i - 1) * n + j - 1] + matchScore, matrix[(i - 1) * n + j] + GAP, matrix[i * n + j - 1] + GAP);
		}
	}
}

/* m row, n col */
void init_matrix(int m, int n, double *matrix) {
	for (int i = 0; i < n; i++)
	{
		matrix[i] = GAP * i;
	}
	for (int i = 0; i < m; i++)
	{
		matrix[i * n] = GAP * i;
	}
}

/* set all elements to zeros  */
void set_zeros(int m, int n, double *matrix) {
	for (int i =0; i < m; i++){
		for (int j =0; j < n; j++){
			matrix[i * n + j] = 0.0;
		}
	}
}

void init_matrix_packed(int m, int n, double *packed) {
	int i = 0;
	int j = 0;

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
}

void printMatrix(int m, int n, double *matrix) {
	for (int i = 0; i < m; i++)
	{
		for (int j = 0; j < n; j++)
		{
			printf("%d\t", (int) matrix[i * n + j]);
		}
		printf("\n");
	}
}

void rand_dna_seq(char *dest, size_t length) {
    char charset[] = "ACGT";
    srand(time(0));
    while (length-- > 0) {
        size_t index = (double) rand() / RAND_MAX * (sizeof charset - 1);
        *dest++ = charset[index];
    }
    *dest = '\0';
}

int main() {
	double *a;
	double *b;
	double *matrix, *matrix_check, *packed;

	unsigned long long t0, t1;

	int iteration = 10;
	int m = 1025; //m is the number of rows of C
	int n = 1025; //n is the number of columns of C
	// char str1[] = "GATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACAT";
	// char str2[] = "GCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACAT";

	// make random dna sequences
	char str1[m];   // including a \0 character
	char str2[n];

	rand_dna_seq(str1, sizeof str1 - 1);
	rand_dna_seq(str2, sizeof str2 - 1);


	/*
		Assume the following
				- A is stored in column major order
				- B is stored in row major order
				- C must be written out in row major order
	*/

	posix_memalign((void **)&a, 64, (m - 1) * sizeof(double));
	posix_memalign((void **)&b, 64, (n - 1) * sizeof(double));
	posix_memalign((void **)&matrix, 64, m * n * sizeof(double));
	posix_memalign((void **)&matrix_check, 64, m * n * sizeof(double));

	posix_memalign((void **)&packed, 64, (2 * m - 1) * n * sizeof(double));

	

	for (int i = 0; i < m - 1; i++)
	{
		a[i] = (double)str1[i];
	}

	for (int i = 0; i < n - 1; i++)
	{
		b[i] = (double)str2[i];
	}

	// for (int i = 0; i < m * n; i++)
	// {
	// 	matrix[i] = 0;
	// 	matrix_check[i] = 0;
	// }

	

	/************************************* Naive **************************************************/
	int correct = 1;
	long total_time = 0;
	set_zeros(m, n, matrix_check);

	init_matrix(m, n, matrix_check);

	for (int i = 0; i < iteration; i++) {
		t0 = rdtsc();
		naive(m, n, a, b, matrix_check);
		t1 = rdtsc();
		total_time += (t1 - t0);
	}
	

	// printf("Naive Result:\n");
	// printMatrix(m, n, matrix_check);
	printf("Naive Result:\t\t\tm = %d,\t n = %d,\t time = %lf\n", m, n, ((double)(total_time) / iteration));

	// for(int i = 0; i < m; i ++) {
	// 	for (int j = 0; j < n; j ++) {
	// 		printf("%02.0f ", matrix_check[i * n + j]);
	// 	}
	// 	printf("\n");
	// }
	// printf("\n");

	/************************************* Kernel **************************************************/
	correct = 1;
	total_time = 0;
	set_zeros(m, n, matrix);

	
	init_matrix(m, n, matrix);
	for (int i = 0; i < iteration; i++) {
		t0 = rdtsc();
		kernel(m, n, a, b, matrix);
		t1 = rdtsc();
		total_time += (t1 - t0);
	}
	
	// printf("Kernel Result:\n");
	// printMatrix(m, n, matrix);
	
	for (int i = 0; i < (m) * (n); i++)
	{
		correct &= (matrix[i] == matrix_check[i]);
	}
	printf("Non-SIMD Kernel-4 Result:\tm = %d,\t n = %d,\t time = %lf\t, correct = %d\n", m, n, ((double)(total_time) / iteration), correct);
	/************************************* Kernel packed **************************************************/
	correct = 1;
	total_time = 0;
	set_zeros(m, n, matrix);
	

	init_matrix_packed(m, n, packed);
	for (int i = 0; i < iteration; i++) {
		t0 = rdtsc();
		SIMDkernel32packed(m, n, a, b, packed);
		t1 = rdtsc();
		total_time += (t1 - t0);
	}
	
	// printf("Kernel Result:\n");
	// printMatrix(m, n, matrix);
	repack(m, n, packed, matrix);


	for (int i = 0; i < (m) * (n); i++)
	{
		correct &= (matrix[i] == matrix_check[i]);
	}
	printf("Kernel-32 packed Result:\tm = %d,\t n = %d,\t time = %lf\t, correct = %d\n", m, n, ((double)(total_time) / iteration), correct);
	// for(int i = 0; i < m; i ++) {
	// 	for (int j = 0; j < n; j ++) {
	// 		printf("%02.0f ", matrix[i * n + j]);
	// 	}
	// 	printf("\n");
	// }
	// printf("\n");

	// for(int i = 0; i < 2 * m - 1; i ++) {
	// 	for (int j = 0; j < n; j ++) {
	// 		printf("%02.0f ", packed[i * n + j]);
	// 	}
	// 	printf("\n");
	// }
	// printf("\n");

	free(a);
	free(b);
	free(matrix);
	free(matrix_check);
	free(packed);

	return 0;
}
