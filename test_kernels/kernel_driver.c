#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "immintrin.h"
#include "naive.h"
#include "nopack_kernels.h"
#include "packed_kernels.h"


//timing routine for reading the time stamp counter
static __inline__ unsigned long long rdtsc(void)
{
	unsigned hi, lo;
	__asm__ __volatile__("rdtsc"
		: "=a"(lo), "=d"(hi));
	return ((unsigned long long)lo) | (((unsigned long long)hi) << 32);
}

void save_matrix(int m, int n, double *matrix) {
	FILE *fp;    
    if( (fp=fopen("../kernel_res.txt","w")) == NULL ){
        printf("Cannot open file, press any key to exit!\n");
        exit(1);
    }
	for (int i = 0; i < m; i++)
	{
		for (int j = 0; j < n; j++)
		{
			fprintf(fp,"%d ",(int) matrix[i * n + j]); 
		}
		fprintf(fp,"\n");
	}
	fclose(fp);
}



int main() {
	double *a;
	double *b;
	double *matrix, *matrix_check, *packed;

	unsigned long long t0, t1;

	int iteration = 10;
	int m; //m is the number of rows of C
	int n; //n is the number of columns of C
	// char str1[] = "GATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACATGATTACAT";
	// char str2[] = "GCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACATGCATGCUTGATTACATGATTACATGATTACAT";

    FILE *fp;    
    if( (fp=fopen("../seq.txt","rt")) == NULL ){
        printf("Cannot open file, press any key to exit!\n");
        exit(1);
    }

	fscanf(fp,"%d ",&m); 
    fscanf(fp,"%d\n",&n);
    printf("m = %d, n = %d\n", m, n);

	// make random dna sequences
	char str1[m + 1];   // including a \0 character
	char str2[n + 1];

	fgets(str1, m+1, fp);  
	fgets(str2, n+1, fp);
	printf("Sequence1: %s\n", str1);
	printf("Sequence2: %s\n", str2);
	fclose(fp);

	// rand_dna_seq(str1, sizeof str1 - 1);
	// rand_dna_seq(str2, sizeof str2 - 1);

	// printf("%s\n", str1);
	// printf("%s\n", str2);



	// int m = 9; //m is the number of rows of C
	// int n = 9; //n is the number of columns of C
	// char str1[] = "GATTACAT";
	// char str2[] = "GCATGCUT";


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
	// printf("Naive Result:\t\t\tm = %d,\t n = %d,\t time = %lf\n", m, n, ((double)(total_time) / iteration));
	printf("Naive Result:\t\t\tm = %d,\t n = %d,\t performance = %lf\n", m, n, 6*(m-1)*(n-1)/((double)(total_time) / iteration));

	// for(int i = 0; i < m; i ++) {
	// 	for (int j = 0; j < n; j ++) {
	// 		printf("%02.0f ", matrix_check[i * n + j]);
	// 	}
	// 	printf("\n");
	// }
	// printf("\n");

	/************************************* Kernel **************************************************/
	// correct = 1;
	// total_time = 0;
	// set_zeros(m, n, matrix);

	
	// init_matrix(m, n, matrix);
	// for (int i = 0; i < iteration; i++) {
	// 	t0 = rdtsc();
	// 	noSIMD_nopack_kernel_4(m, n, a, b, matrix);
	// 	t1 = rdtsc();
	// 	total_time += (t1 - t0);
	// }
	
	// // printf("Kernel Result:\n");
	// // printMatrix(m, n, matrix);
	
	// for (int i = 0; i < (m) * (n); i++)
	// {
	// 	correct &= (matrix[i] == matrix_check[i]);
	// }
	// // printf("Non-SIMD Kernel-4 Result:\tm = %d,\t n = %d,\t time = %lf\t, correct = %d\n", m, n, ((double)(total_time) / iteration), correct);
	// printf("Non-SIMD Kernel-4 Result:\tm = %d,\t n = %d,\t performance = %lf\n", m, n, 6*(m-1)*(n-1)/((double)(total_time) / iteration));
	
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

	/************************************* SIMD Kernel 4 **************************************************/
	correct = 1;
	total_time = 0;
	set_zeros(m, n, matrix);

	init_matrix(m, n, matrix);
	for (int i = 0; i < iteration; i++) {
		t0 = rdtsc();
		nopack_kernel_4(m, n, a, b, matrix);
		t1 = rdtsc();
		total_time += (t1 - t0);
	}

	// printf("SIMD Kernel-4 Result:\n");
	// printMatrix(m, n, matrix);
	correct = 1;
	for (int i = 0; i < (m) * (n); i++)
	{
		correct &= (matrix[i] == matrix_check[i]);
	}
	// printf("SIMD Kernel-4 Result:\t\tm = %d,\t n = %d,\t time = %lf\t, correct = %d\n", m, n, ((double)(total_time) / iteration), correct);
	printf("SIMD Kernel-4 Result:\t\tm = %d,\t n = %d,\t performance = %lf\n", m, n, 6*(m-1)*(n-1)/((double)(total_time) / iteration));

	/************************************* SIMD Kernel 8 **************************************************/
	correct = 1;
	total_time = 0;
	set_zeros(m, n, matrix);

	init_matrix(m, n, matrix);
	for (int i = 0; i < iteration; i++) {
		t0 = rdtsc();
		nopack_kernel_8(m, n, a, b, matrix);
		t1 = rdtsc();
		total_time += (t1 - t0);
	}

	// printf("SIMD Kernel-8 Result:\n");
	// printMatrix(m, n, matrix);
	save_matrix(m, n, matrix);

	for (int i = 0; i < (m) * (n); i++)
	{
		correct &= (matrix[i] == matrix_check[i]);
	}
	// printf("SIMD Kernel-8 Result:\t\tm = %d,\t n = %d,\t time = %lf\t, correct = %d\n", m, n, ((double)(total_time) / iteration), correct);
	printf("SIMD Kernel-8 Result:\t\tm = %d,\t n = %d,\t performance = %lf\n", m, n, 6*(m-1)*(n-1)/((double)(total_time) / iteration));

	/************************************* SIMD Kernel 16 **************************************************/
	correct = 1;
	total_time = 0;

	init_matrix(m, n, matrix);
	for (int i = 0; i < iteration; i++) {
		t0 = rdtsc();
		nopack_kernel_16(m, n, a, b, matrix);
		t1 = rdtsc();
		total_time += (t1 - t0);
	}

	// printf("SIMD Kernel-16 Result:\n");
	// printMatrix(m, n, matrix);
	for (int i = 0; i < (m) * (n); i++)
	{
		correct &= (matrix[i] == matrix_check[i]);
	}
	// printf("SIMD Kernel-16 Result:\t\tm = %d,\t n = %d,\t time = %lf\t, correct = %d\n", m, n, ((double)(total_time) / iteration), correct);
	printf("SIMD Kernel-16 Result:\t\tm = %d,\t n = %d,\t performance = %lf\n", m, n, 6*(m-1)*(n-1)/((double)(total_time) / iteration));
	
	/************************************* SIMD Kernel 32 **************************************************/
	correct = 1;
	total_time = 0;

	init_matrix(m, n, matrix);
	for (int i = 0; i < iteration; i++) {
		t0 = rdtsc();
		nopack_kernel_32(m, n, a, b, matrix);
		t1 = rdtsc();
		total_time += (t1 - t0);
	}

	// printf("SIMD Kernel-32 Result:\n");
	// printMatrix(m, n, matrix);
	correct = 1;
	for (int i = 0; i < (m) * (n); i++)
	{
		correct &= (matrix[i] == matrix_check[i]);
	}
	// printf("SIMD Kernel-32 Result:\t\tm = %d,\t n = %d,\t time = %lf\t, correct = %d\n", m, n, ((double)(total_time) / iteration), correct);
	printf("SIMD Kernel-32 Result:\t\tm = %d,\t n = %d,\t performance = %lf\n", m, n, 6*(m-1)*(n-1)/((double)(total_time) / iteration));

	/****************************************** packed kernel 4 *****************************************************/
	correct = 1;
	total_time = 0;
	// set_zeros(m, n, packed);

	// init_matrix_packed(m, n, packed);

	for (int i = 0; i < iteration; i++) {
		// set_zeros(2 * m - 1, n, packed);
		init_matrix_packed(m, n, packed);
		t0 = rdtsc();
		packed_kernel_4(m, n, a, b, packed);
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
	// printf("kernel-4 packed Result:\t\tm = %d,\t n = %d,\t time = %lf\t, correct = %d\n", m, n, ((double)(total_time) / iteration), correct);
	printf("kernel-4 packed Result:\t\tm = %d,\t n = %d,\t performance = %lf\n", m, n, 6*(m-1)*(n-1)/((double)(total_time) / iteration));



	// /****************************************** packed kernel 8 *****************************************************/
	correct = 1;
	total_time = 0;
	// set_zeros(m, n, packed);

	// init_matrix_packed(m, n, packed);

	for (int i = 0; i < iteration; i++) {
		// set_zeros(2 * m - 1, n, packed);
		init_matrix_packed(m, n, packed);
		t0 = rdtsc();
		packed_kernel_8(m, n, a, b, packed);
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
	// printf("kernel-4 packed Result:\t\tm = %d,\t n = %d,\t time = %lf\t, correct = %d\n", m, n, ((double)(total_time) / iteration), correct);
	printf("kernel-8 packed Result:\t\tm = %d,\t n = %d,\t performance = %lf\n", m, n, 6*(m-1)*(n-1)/((double)(total_time) / iteration));


	/****************************************** packed kernel 16 *****************************************************/
	correct = 1;
	total_time = 0;
	// set_zeros(m, n, packed);

	// init_matrix_packed(m, n, packed);

	for (int i = 0; i < iteration; i++) {
		// set_zeros(2 * m - 1, n, packed);
		init_matrix_packed(m, n, packed);
		t0 = rdtsc();
		packed_kernel_16(m, n, a, b, packed);
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
	// printf("kernel-4 packed Result:\t\tm = %d,\t n = %d,\t time = %lf\t, correct = %d\n", m, n, ((double)(total_time) / iteration), correct);
	printf("kernel-16 packed Result:\tm = %d,\t n = %d,\t performance = %lf\n", m, n, 6*(m-1)*(n-1)/((double)(total_time) / iteration));



	/****************************************** packed kernel 32 *****************************************************/
	correct = 1;
	total_time = 0;
	// set_zeros(m, n, packed);

	// init_matrix_packed(m, n, packed);

	for (int i = 0; i < iteration; i++) {
		// set_zeros(2 * m - 1, n, packed);
		init_matrix_packed(m, n, packed);
		t0 = rdtsc();
		packed_kernel_32(m, n, a, b, packed);
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
	// printf("kernel-4 packed Result:\t\tm = %d,\t n = %d,\t time = %lf\t, correct = %d\n", m, n, ((double)(total_time) / iteration), correct);
	printf("kernel-32 packed Result:\tm = %d,\t n = %d,\t performance = %lf\n", m, n, 6*(m-1)*(n-1)/((double)(total_time) / iteration));



	/****************************************** packed kernel 64 *****************************************************/
	correct = 1;
	total_time = 0;
	// set_zeros(m, n, packed);

	// init_matrix_packed(m, n, packed);

	for (int i = 0; i < iteration; i++) {
		// set_zeros(2 * m - 1, n, packed);
		init_matrix_packed(m, n, packed);
		t0 = rdtsc();
		packed_kernel_64(m, n, a, b, packed);
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
	// printf("kernel-4 packed Result:\t\tm = %d,\t n = %d,\t time = %lf\t, correct = %d\n", m, n, ((double)(total_time) / iteration), correct);
	printf("kernel-64 packed Result:\tm = %d,\t n = %d,\t performance = %lf\n", m, n, 6*(m-1)*(n-1)/((double)(total_time) / iteration));

	// /************************************* Kernel omp packed 32**************************************************/
	correct = 1;
	total_time = 0;
	// set_zeros(m, n, packed);

	// init_matrix_packed(m, n, packed);

	for (int i = 0; i < iteration; i++) {
		// set_zeros(2 * m - 1, n, packed);
		init_matrix_packed(m, n, packed);
		t0 = rdtsc();
		omp_packed_kernel_32(m, n, a, b, packed);
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
	// printf("Omp kernel-32 packed Result:\tm = %d,\t n = %d,\t time = %lf\t, correct = %d\n", m, n, ((double)(total_time) / iteration), correct);
	printf("Omp kernel-32 packed Result:\tm = %d,\t n = %d,\t performance = %lf\n", m, n, 6*(m-1)*(n-1)/((double)(total_time) / iteration));



	/*********************************************************************************************************/
	free(a);
	free(b);
	free(matrix);
	free(matrix_check);
	free(packed);

	return 0;
}
