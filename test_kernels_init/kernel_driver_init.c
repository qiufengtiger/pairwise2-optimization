#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "immintrin.h"
#include "init_kernels.h"

// #define MATCH 1
// #define MISMATCH -1
// #define GAP -1


//timing routine for reading the time stamp counter
static __inline__ unsigned long long rdtsc(void)
{
	unsigned hi, lo;
	__asm__ __volatile__("rdtsc"
		: "=a"(lo), "=d"(hi));
	return ((unsigned long long)lo) | (((unsigned long long)hi) << 32);
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

/* set all elements to zeros  */
void set_zeros(int m, int n, double *matrix) {
	for (int i =0; i < m; i++){
		for (int j =0; j < n; j++){
			matrix[i * n + j] = 0.0;
		}
	}
}


int main(int argc, char *argv[]) {
	double *matrix, *matrix_check;
	// double packed;

	unsigned long long t0, t1;

	int iteration = 1;

	//m is the number of rows of C
	//n is the number of columns of C
	int m = atoi(argv[1]) + 1, n = atoi(argv[2]) + 1;
    printf("m = %d, n = %d\n", m, n);

	// make random dna sequences
	char str1[m + 1];   // including a \0 character
	char str2[n + 1];
	rand_dna_seq(str1, m);
    rand_dna_seq(str2, n);

    posix_memalign((void **)&matrix, 64, m * n * sizeof(double));
	posix_memalign((void **)&matrix_check, 64, m * n * sizeof(double));

    /************************************* Naive **************************************************/

	long total_time = 0;
	set_zeros(m, n, matrix_check);

	for (int i = 0; i < iteration; i++) {
		t0 = rdtsc();
	    init_matrix(m, n, matrix_check);
		t1 = rdtsc();
		total_time += (t1 - t0);
	}

	// printMatrix(m, n, matrix_check);

	printf("(Initialize) Naive Result:\t\t\tm = %d,\t n = %d,\t performance = %lf\n", m, n, (m +n)/((double)(total_time) / iteration));


	/************************************* SIMD Kernel 4 **************************************************/

    total_time = 0;
	set_zeros(m, n, matrix);
    for (int i = 0; i < iteration; i++) {
		t0 = rdtsc();
	    init_matrix_kernel_4(m, n, matrix);
		t1 = rdtsc();
		total_time += (t1 - t0);
	}
	// printMatrix(m, n, matrix);

	printf("(Initialize) SIMD kernel_4 Result:\t\tm = %d,\t n = %d,\t performance = %lf\n", m, n, (m + n)/((double)(total_time) / iteration));


	/************************************* SIMD Kernel 8 **************************************************/

    // total_time = 0;
	// set_zeros(m, n, matrix);
	// for (int i = 0; i < iteration; i++) {
	// 	t0 = rdtsc();
	// 	init_matrix_kernel_8(m, n, matrix);
	// 	t1 = rdtsc();
	// 	total_time += (t1 - t0);
	// }
	// // printMatrix(m, n, matrix);

	// printf("(Initialize) SIMD kernel_8 Result:\t\tm = %d,\t n = %d,\t performance = %lf\n", m, n, (m + n)/((double)(total_time) / iteration));



	/************************************* SIMD Kernel 16 **************************************************/

    // total_time = 0;
	// set_zeros(m, n, matrix);
	// for (int i = 0; i < iteration; i++) {
	// t0 = rdtsc();
	// init_matrix_kernel_16(m, n, matrix);
	// t1 = rdtsc();
	// total_time += (t1 - t0);
	// }
	// // printMatrix(m, n, matrix);

	// printf("(Initialize) SIMD kernel_16 Result:\t\tm = %d,\t n = %d,\t performance = %lf\n", m, n, (m + n)/((double)(total_time) / iteration));


	/************************************* SIMD Kernel 32 **************************************************/

    // total_time = 0;
	// set_zeros(m, n, matrix);
	// for (int i = 0; i < iteration; i++) {
	// 	t0 = rdtsc();
	// 	init_matrix_kernel_32(m, n, matrix);
	// 	t1 = rdtsc();
	// 	total_time += (t1 - t0);
	// }
	// // printMatrix(m, n, matrix);

	// printf("(Initialize) SIMD kernel_32 Result:\t\tm = %d,\t n = %d,\t performance = %lf\n", m, n, (m + n)/((double)(total_time) / iteration));


	/************************************* SIMD Kernel 60 **************************************************/

    total_time = 0;
	set_zeros(m, n, matrix);
	for (int i = 0; i < iteration; i++) {
		t0 = rdtsc();
		init_matrix_kernel_32(m, n, matrix);
		t1 = rdtsc();
		total_time += (t1 - t0);
	}
	// printMatrix(m, n, matrix);

	printf("(Initialize) SIMD kernel_60 Result:\t\tm = %d,\t n = %d,\t performance = %lf\n", m, n, (m + n)/((double)(total_time) / iteration));

	/************************************* omp kernel  **************************************************/

    total_time = 0;
	set_zeros(m, n, matrix);
	for (int i = 0; i < iteration; i++) {
		t0 = rdtsc();
		init_matrix_omp(m, n, matrix);
		t1 = rdtsc();
		total_time += (t1 - t0);
	}
	// printMatrix(m, n, matrix);

	printf("(Initialize) omp Result:\t\t\tm = %d,\t n = %d,\t performance = %lf\n", m, n, (m + n)/((double)(total_time) / iteration));

	free(matrix);
	free(matrix_check);
	return 0;
}