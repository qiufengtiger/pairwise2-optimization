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
	int size,
	int *restrict a,
	int *restrict b,
	int *restrict matrix) {
	for (int i = 1; i < m; i += size)
	{
		int j = 1;
		for (; j < size; j++)
		{
			for (int k = i; k - i < size - j; k++)
			{
				int matchScore = a[j - 1] == b[k - 1] ? MATCH : MISMATCH;
				matrix[j * n + k] = max(matrix[(j - 1) * n + k - 1] + matchScore, matrix[(j - 1) * n + k] + GAP, matrix[j * n + k - 1] + GAP);
			}
		}
		for (; j < m; j++)
		{
			int row1 = j, col1 = i;
			int row2 = j - 1, col2 = i + 1;
			int row3 = j - 2, col3 = i + 2;
			int row4 = j - 3, col4 = i + 3;
			int s1 = a[row1 - 1] == b[col1 - 1] ? MATCH : MISMATCH;
			int s2 = a[row2 - 1] == b[col2 - 1] ? MATCH : MISMATCH;
			int s3 = a[row3 - 1] == b[col3 - 1] ? MATCH : MISMATCH;
			int s4 = a[row4 - 1] == b[col4 - 1] ? MATCH : MISMATCH;

			matrix[row1 * n + col1] = max(matrix[(row1 - 1) * n + col1 - 1] + s1, matrix[(row1 - 1) * n + col1] + GAP, matrix[row1 * n + col1 - 1] + GAP);
			matrix[row2 * n + col2] = max(matrix[(row2 - 1) * n + col2 - 1] + s2, matrix[(row2 - 1) * n + col2] + GAP, matrix[row2 * n + col2 - 1] + GAP);
			matrix[row3 * n + col3] = max(matrix[(row3 - 1) * n + col3 - 1] + s3, matrix[(row3 - 1) * n + col3] + GAP, matrix[row3 * n + col3 - 1] + GAP);
			matrix[row4 * n + col4] = max(matrix[(row4 - 1) * n + col4 - 1] + s4, matrix[(row4 - 1) * n + col4] + GAP, matrix[row4 * n + col4 - 1] + GAP);
		}
		for (j = 1; j < size; j++) {
			for (int k = i + size - j; k -i < size; k++) {
				int row = m - size + j, col = k;
				int matchScore = a[row - 1] == b[col - 1] ? MATCH : MISMATCH;
				matrix[row * n + col] = max(matrix[(row - 1) * n + col - 1] + matchScore, matrix[(row - 1) * n + col] + GAP, matrix[row * n + col - 1] + GAP);
			}
		}
	}
}

void naive(
	int m,
	int n,
	int *restrict a,
	int *restrict b,
	int *restrict matrix)
{
	for (int i = 1; i < m; i++)
	{
		for (int j = 1; j < n; j++)
		{
			int matchScore = a[i - 1] == b[j - 1] ? MATCH : MISMATCH;
			matrix[i * n + j] = max(matrix[(i - 1) * n + j - 1] + matchScore, matrix[(i - 1) * n + j] + GAP, matrix[i * n + j - 1] + GAP);
		}
	}
}

/* m row, n col */
void initMatrix(int m, int n, int *matrix)
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

void printMatrix(int m, int n, int *matrix)
{
	for (int i = 0; i < m; i++)
	{
		for (int j = 0; j < n; j++)
		{
			printf("%d\t", matrix[i * n + j]);
		}
		printf("\n");
	}
}

int main()
{

	int *a;
	int *b;
	int *matrix, *matrix_check;

	unsigned long long t0, t1;

	int m = 9; //m is the number of rows of C
	int n = 9; //n is the number of columns of C
	int size = 4;

	/*
		Assume the following
				- A is stored in column major order
				- B is stored in row major order
				- C must be written out in row major order
	*/

	posix_memalign((void **)&a, 64, (m - 1) * sizeof(int));
	posix_memalign((void **)&b, 64, (n - 1) * sizeof(int));
	posix_memalign((void **)&matrix, 64, m * n * sizeof(int));
	posix_memalign((void **)&matrix_check, 64, m * n * sizeof(int));

	char str1[] = "GATTACAT";
	char str2[] = "GCATGCUT";

	for (int i = 0; i < m - 1; i++)
	{
		a[i] = (int)str1[i];
	}

	for (int i = 0; i < n - 1; i++)
	{
		b[i] = (int)str2[i];
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
	printMatrix(m, n, matrix_check);
	printf("Config:\nm = %d,\t n = %d,\t time = %lf\n", m, n, ((double)(t1 - t0)));

	initMatrix(m, n, matrix);

	t0 = rdtsc();
	kernel(m, n, size, a, b, matrix);
	t1 = rdtsc();
	printf("Kernel Result:\n");
	printMatrix(m, n, matrix);

	int correct = 1;
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
