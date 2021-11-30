#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define MATCH 1
#define MISMATCH -1
#define GAP -1

/* set all elements to zeros  */
void set_zeros(int m, int n, double *matrix) {
	for (int i =0; i < m; i++){
		for (int j =0; j < n; j++){
			matrix[i * n + j] = 0.0;
		}
	}
}

/* Initialize the first rows and columns of score matrix and  trace matrix */
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

/* Print a matrix  */
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

/* Generate a random dna string  */
void rand_dna_seq(char *dest, size_t length) {
    char charset[] = "ACGT";

    while (length-- > 0) {
        size_t index = (double) rand() / RAND_MAX * (sizeof charset - 1);
        *dest++ = charset[index];
    }
    *dest = '\0';
}

int max(int a, int b, int c)
{
	return a > b ? (a > c ? a : c) : (b > c ? b : c);
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