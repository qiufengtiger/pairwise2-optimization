#include <stdio.h>
#include <stdlib.h>
#include <math.h>
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
	int size = 4;
	for (int i = 1; i < m; i += size)
	{
		int j = 1;
		for (; j < size; j++)
		{
			for (int k = i; k - i < size - j; k++)
			{
				double matchScore = a[j - 1] == b[k - 1] ? MATCH : MISMATCH;
				matrix[j * n + k] = max(matrix[(j - 1) * n + k - 1] + matchScore, matrix[(j - 1) * n + k] + GAP, matrix[j * n + k - 1] + GAP);
			}
		}
		for (; j < m; j++)
		{
			int row1 = j, col1 = i;
			int row2 = j - 1, col2 = i + 1;
			int row3 = j - 2, col3 = i + 2;
			int row4 = j - 3, col4 = i + 3;
			double s1 = a[row1 - 1] == b[col1 - 1] ? MATCH : MISMATCH;
			double s2 = a[row2 - 1] == b[col2 - 1] ? MATCH : MISMATCH;
			double s3 = a[row3 - 1] == b[col3 - 1] ? MATCH : MISMATCH;
			double s4 = a[row4 - 1] == b[col4 - 1] ? MATCH : MISMATCH;

			matrix[row1 * n + col1] = max(matrix[(row1 - 1) * n + col1 - 1] + s1, matrix[(row1 - 1) * n + col1] + GAP, matrix[row1 * n + col1 - 1] + GAP);
			matrix[row2 * n + col2] = max(matrix[(row2 - 1) * n + col2 - 1] + s2, matrix[(row2 - 1) * n + col2] + GAP, matrix[row2 * n + col2 - 1] + GAP);
			matrix[row3 * n + col3] = max(matrix[(row3 - 1) * n + col3 - 1] + s3, matrix[(row3 - 1) * n + col3] + GAP, matrix[row3 * n + col3 - 1] + GAP);
			matrix[row4 * n + col4] = max(matrix[(row4 - 1) * n + col4 - 1] + s4, matrix[(row4 - 1) * n + col4] + GAP, matrix[row4 * n + col4 - 1] + GAP);
		}
		for (j = 1; j < size; j++) {
			for (int k = i + size - j; k -i < size; k++) {
				int row = m - size + j, col = k;
				double matchScore = a[row - 1] == b[col - 1] ? MATCH : MISMATCH;
				matrix[row * n + col] = max(matrix[(row - 1) * n + col - 1] + matchScore, matrix[(row - 1) * n + col] + GAP, matrix[row * n + col - 1] + GAP);
			}
		}
	}
}


void SIMDkernel4(
	int m,
	int n,
	double *restrict a,
	double *restrict b,
	double *restrict matrix) {

	int size = 4;
	double match_point[4] = {MATCH - GAP, MATCH - GAP, MATCH - GAP, MATCH - GAP};
	double mismatch_point[4] = {MISMATCH - GAP, MISMATCH - GAP, MISMATCH - GAP, MISMATCH - GAP};
	double gap_point[4] = {GAP, GAP, GAP, GAP};
	__m256d MATCH_SCORE = _mm256_load_pd(match_point);
	__m256d MISMATCH_SCORE = _mm256_load_pd(mismatch_point);
	__m256d GAP_SCORE = _mm256_load_pd(gap_point);
	double result[4] = {0, 0, 0, 0};

	__m256d seq_A, seq_B, is_match, match_score, mismatch_score, top_left, score1, left, best_score, top;

	for (int i = 1; i < m; i += size)
	{
		int j = 1;
		for (; j < size; j++)
		{
			for (int k = i; k - i < size - j; k++)
			{
				double matchScore = a[j - 1] == b[k - 1] ? MATCH : MISMATCH;
				matrix[j * n + k] = max(matrix[(j - 1) * n + k - 1] + matchScore, matrix[(j - 1) * n + k] + GAP, matrix[j * n + k - 1] + GAP);
			}
		}
		for (; j < m; j++)
		{
			int row1 = j, col1 = i;
			int row2 = j - 1, col2 = i + 1;
			int row3 = j - 2, col3 = i + 2;
			int row4 = j - 3, col4 = i + 3;

			seq_A = _mm256_set_pd(a[row1 - 1], a[row2 - 1], a[row3 - 1], a[row4 - 1]);
			seq_B = _mm256_set_pd(b[col1 - 1], b[col2 - 1], b[col3 - 1], b[col4 - 1]);
			is_match = _mm256_cmp_pd(seq_A, seq_B, _CMP_EQ_OQ);	
			match_score = _mm256_and_pd(is_match, MATCH_SCORE);
			mismatch_score = _mm256_andnot_pd(is_match, MISMATCH_SCORE);
			match_score = _mm256_or_pd(match_score, mismatch_score);
			top_left = _mm256_set_pd(matrix[(row1 - 1) * n + col1 - 1], matrix[(row2 - 1) * n + col2 - 1], matrix[(row3 - 1) * n + col3 - 1], matrix[(row4 - 1) * n + col4 - 1]);
			score1 = _mm256_add_pd(top_left, match_score);
			left = _mm256_set_pd(matrix[(row1 - 1) * n + col1], matrix[(row2 - 1) * n + col2], matrix[(row3 - 1) * n + col3], matrix[(row4 - 1) * n + col4]);
			best_score = _mm256_max_pd(score1, left);
			top = _mm256_set_pd(matrix[row1 * n + col1 - 1], matrix[row2 * n + col2 - 1], matrix[row3 * n + col3 - 1], matrix[row4 * n + col4 - 1]);
			best_score = _mm256_max_pd(best_score, top);
			best_score = _mm256_add_pd(best_score, GAP_SCORE);

			_mm256_store_pd(result, best_score);

			matrix[row1 * n + col1] = result[3];
			matrix[row2 * n + col2] = result[2];
			matrix[row3 * n + col3] = result[1];
			matrix[row4 * n + col4] = result[0];
		}
		for (j = 1; j < size; j++) {
			for (int k = i + size - j; k -i < size; k++) {
				int row = m - size + j, col = k;
				double matchScore = a[row - 1] == b[col - 1] ? MATCH : MISMATCH;
				matrix[row * n + col] = max(matrix[(row - 1) * n + col - 1] + matchScore, matrix[(row - 1) * n + col] + GAP, matrix[row * n + col - 1] + GAP);
			}
		}
	}
}

void SIMDkernel32(
	int m,
	int n,
	double *restrict a,
	double *restrict b,
	double *restrict matrix) {

	int size = 32;
	double match_point[4] = {MATCH - GAP, MATCH - GAP, MATCH - GAP, MATCH - GAP};
	double mismatch_point[4] = {MISMATCH - GAP, MISMATCH - GAP, MISMATCH - GAP, MISMATCH - GAP};
	double gap_point[4] = {GAP, GAP, GAP, GAP};
	__m256d MATCH_SCORE = _mm256_load_pd(match_point);
	__m256d MISMATCH_SCORE = _mm256_load_pd(mismatch_point);
	__m256d GAP_SCORE = _mm256_load_pd(gap_point);
	double result[32] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

	__m256d seq_A, seq_B, is_match, match_score, mismatch_score, top_left, score1, left, best_score, top;
	// __m256d seq_A, seq_B, is_match, match_score, mismatch_score, top_left, score1, left, best_score, top;
	// __m256d seq_A, seq_B, is_match, match_score, mismatch_score, top_left, score1, left, best_score, top;
	// __m256d seq_A, seq_B, is_match, match_score, mismatch_score, top_left, score1, left, best_score, top;
	// __m256d seq_A, seq_B, is_match, match_score, mismatch_score, top_left, score1, left, best_score, top;
	// __m256d seq_A, seq_B, is_match, match_score, mismatch_score, top_left, score1, left, best_score, top;
	// __m256d seq_A, seq_B, is_match, match_score, mismatch_score, top_left, score1, left, best_score, top;
	// __m256d seq_A, seq_B, is_match, match_score, mismatch_score, top_left, score1, left, best_score, top;

	for (int i = 1; i < m; i += size)
	{
		int j = 1;
		for (; j < size; j++)
		{
			for (int k = i; k - i < size - j; k++)
			{
				double matchScore = a[j - 1] == b[k - 1] ? MATCH : MISMATCH;
				matrix[j * n + k] = max(matrix[(j - 1) * n + k - 1] + matchScore, matrix[(j - 1) * n + k] + GAP, matrix[j * n + k - 1] + GAP);
			}
		}
		for (; j < m; j++)
		{
			int row1 = j, col1 = i;
			int row2 = j - 1, col2 = i + 1;
			int row3 = j - 2, col3 = i + 2;
			int row4 = j - 3, col4 = i + 3;

			seq_A = _mm256_set_pd(a[row1 - 1], a[row2 - 1], a[row3 - 1], a[row4 - 1]);
			seq_B = _mm256_set_pd(b[col1 - 1], b[col2 - 1], b[col3 - 1], b[col4 - 1]);
			is_match = _mm256_cmp_pd(seq_A, seq_B, _CMP_EQ_OQ);	
			match_score = _mm256_and_pd(is_match, MATCH_SCORE);
			mismatch_score = _mm256_andnot_pd(is_match, MISMATCH_SCORE);
			match_score = _mm256_or_pd(match_score, mismatch_score);
			top_left = _mm256_set_pd(matrix[(row1 - 1) * n + col1 - 1], matrix[(row2 - 1) * n + col2 - 1], matrix[(row3 - 1) * n + col3 - 1], matrix[(row4 - 1) * n + col4 - 1]);
			score1 = _mm256_add_pd(top_left, match_score);
			left = _mm256_set_pd(matrix[(row1 - 1) * n + col1], matrix[(row2 - 1) * n + col2], matrix[(row3 - 1) * n + col3], matrix[(row4 - 1) * n + col4]);
			best_score = _mm256_max_pd(score1, left);
			top = _mm256_set_pd(matrix[row1 * n + col1 - 1], matrix[row2 * n + col2 - 1], matrix[row3 * n + col3 - 1], matrix[row4 * n + col4 - 1]);
			best_score = _mm256_max_pd(best_score, top);
			best_score = _mm256_add_pd(best_score, GAP_SCORE);

			_mm256_store_pd(result, best_score);

			matrix[row1 * n + col1] = result[3];
			matrix[row2 * n + col2] = result[2];
			matrix[row3 * n + col3] = result[1];
			matrix[row4 * n + col4] = result[0];
		}
		for (j = 1; j < size; j++) {
			for (int k = i + size - j; k -i < size; k++) {
				int row = m - size + j, col = k;
				double matchScore = a[row - 1] == b[col - 1] ? MATCH : MISMATCH;
				matrix[row * n + col] = max(matrix[(row - 1) * n + col - 1] + matchScore, matrix[(row - 1) * n + col] + GAP, matrix[row * n + col - 1] + GAP);
			}
		}
	}
}

void naive(
	int m,
	int n,
	double *restrict a,
	double *restrict b,
	double *restrict matrix)
{
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
void initMatrix(int m, int n, double *matrix)
{
	for (int i = 0; i < n; i++)
	{
		matrix[i] = GAP * i;
	}
	for (int i = 0; i < m; i++)
	{
		matrix[i * n] = GAP * i;
	}
}

void printMatrix(int m, int n, double *matrix)
{
	for (int i = 0; i < m; i++)
	{
		for (int j = 0; j < n; j++)
		{
			printf("%d\t", (int) matrix[i * n + j]);
		}
		printf("\n");
	}
}

int main()
{

	double *a;
	double *b;
	double *matrix, *matrix_check;

	unsigned long long t0, t1;

	int m = 33; //m is the number of rows of C
	int n = 33; //n is the number of columns of C
	char str1[] = "GATTACATGATTACATGATTACATGATTACAT";
	char str2[] = "GCATGCUTGATTACATGATTACATGATTACAT";

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

	

	for (int i = 0; i < m - 1; i++)
	{
		a[i] = (double)str1[i];
	}

	for (int i = 0; i < n - 1; i++)
	{
		b[i] = (double)str2[i];
	}

	for (int i = 0; i < m * n; i++)
	{
		matrix[i] = 0;
		matrix_check[i] = 0;
	}

	initMatrix(m, n, matrix_check);

	t0 = rdtsc();
	naive(m, n, a, b, matrix_check);
	t1 = rdtsc();

	printf("Naive Result:\n");
	// printMatrix(m, n, matrix_check);
	printf("Config:\nm = %d,\t n = %d,\t time = %lf\n", m, n, ((double)(t1 - t0)));

	int correct = 1;
	/************************************* Kernel **************************************************/
	// initMatrix(m, n, matrix);
	// t0 = rdtsc();
	// kernel(m, n, a, b, matrix);
	// t1 = rdtsc();
	// printf("Kernel Result:\n");
	// // printMatrix(m, n, matrix);
	// correct = 1;
	// for (int i = 0; i < (m) * (n); i++)
	// {
	// 	correct &= (matrix[i] == matrix_check[i]);
	// }
	// printf("Config:\nm = %d,\t n = %d,\t time = %lf\t, correct = %d\n", m, n, ((double)(t1 - t0)), correct);

	/************************************* SIMD Kernel 4 **************************************************/
	initMatrix(m, n, matrix);
	t0 = rdtsc();
	SIMDkernel4(m, n, a, b, matrix);
	t1 = rdtsc();
	printf("SIMD Kernel-4 Result:\n");
	// printMatrix(m, n, matrix);
	correct = 1;
	for (int i = 0; i < (m) * (n); i++)
	{
		correct &= (matrix[i] == matrix_check[i]);
	}
	printf("Config:\nm = %d,\t n = %d,\t time = %lf\t, correct = %d\n", m, n, ((double)(t1 - t0)), correct);

	free(a);
	free(b);
	free(matrix);
	free(matrix_check);

	return 0;
}
