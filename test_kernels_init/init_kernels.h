#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

#include "immintrin.h"

#define MATCH 1
#define MISMATCH -1
#define GAP -1

void init_matrix_kernel_4(int m, int n, double *restrict matrix){
    int size = 4;
    double gap_point[4] = {GAP, GAP, GAP, GAP};
    __m256d ymm0 = _mm256_load_pd(gap_point);

    __m256d ymm1;

    // #pragma omp parallel for schedule (static, 2) num_threads(8)
    for (int i = 1; i < n; i += size){
        double indexes[4] = {i, i+1, i+2, i+3};
        ymm1 = _mm256_load_pd(indexes);
        ymm1 = _mm256_mul_pd(ymm1, ymm0);
        _mm256_storeu_pd(&matrix[i], ymm1);
    }


    // for (int j =0; j < m; j += size){
    //     double indexes[4] = {j, j+1, j+2, j+3};
    //     ymm1 = _mm256_load_pd(indexes);
    //     ymm1 = _mm256_mul_pd(ymm1, ymm0);
    //     _mm256_storeu_pd(&matrix[j], ymm0);
    // }

    for (int j = 1; j < m; j++){
		matrix[j * n] = GAP * j;
	}
}


void init_matrix_kernel_8(int m, int n, double *restrict matrix){
    int size = 8;
    double gap_point[4] = {GAP, GAP, GAP, GAP};
    __m256d ymm0 = _mm256_load_pd(gap_point);

    __m256d ymm1;
    __m256d ymm2;


    for (int i = 1; i < n; i += size){
        double indexes1[4] = {i, i+1, i+2, i+3};
        double indexes2[4] = {i+4, i+5, i+6, i+7};

        ymm1 = _mm256_load_pd(indexes1);
        ymm1 = _mm256_mul_pd(ymm1, ymm0);

        ymm2 = _mm256_load_pd(indexes2);
        ymm2 = _mm256_mul_pd(ymm2, ymm0);

        _mm256_storeu_pd(&matrix[i], ymm1);
        _mm256_storeu_pd(&matrix[i+4], ymm2);
    }


    for (int j = 1; j < m; j++){
		matrix[j * n] = GAP * j;
	}
}


void init_matrix_kernel_16(int m, int n, double *restrict matrix){
    int size = 16;
    double gap_point[4] = {GAP, GAP, GAP, GAP};
    __m256d ymm0 = _mm256_load_pd(gap_point);

    __m256d ymm1;
    __m256d ymm2;
    __m256d ymm3;
    __m256d ymm4;


    for (int i = 1; i < n; i += size){
        double indexes1[4] = {i, i+1, i+2, i+3};
        double indexes2[4] = {i+4, i+5, i+6, i+7};
        double indexes3[4] = {i+8, i+9, i+10, i+11};
        double indexes4[4] = {i+12, i+13, i+14, i+15};

        ymm1 = _mm256_load_pd(indexes1);
        ymm1 = _mm256_mul_pd(ymm1, ymm0);

        ymm2 = _mm256_load_pd(indexes2);
        ymm2 = _mm256_mul_pd(ymm2, ymm0);

        ymm3 = _mm256_load_pd(indexes3);
        ymm3 = _mm256_mul_pd(ymm3, ymm0);

        ymm4 = _mm256_load_pd(indexes4);
        ymm4 = _mm256_mul_pd(ymm4, ymm0);

        _mm256_storeu_pd(&matrix[i], ymm1);
        _mm256_storeu_pd(&matrix[i+4], ymm2);
        _mm256_storeu_pd(&matrix[i+8], ymm3);
        _mm256_storeu_pd(&matrix[i+12], ymm4);
    }


    for (int j = 1; j < m; j++){
		matrix[j * n] = GAP * j;
	}
}


void init_matrix_kernel_32(int m, int n, double *restrict matrix){
    int size = 32;
    double gap_point[4] = {GAP, GAP, GAP, GAP};
    __m256d ymm0 = _mm256_load_pd(gap_point);

    __m256d ymm1;
    __m256d ymm2;
    __m256d ymm3;
    __m256d ymm4;
    __m256d ymm5;
    __m256d ymm6;
    __m256d ymm7;
    __m256d ymm8;


    for (int i = 1; i < n; i += size){
        double indexes1[4] = {i, i+1, i+2, i+3};
        double indexes2[4] = {i+4, i+5, i+6, i+7};
        double indexes3[4] = {i+8, i+9, i+10, i+11};
        double indexes4[4] = {i+12, i+13, i+14, i+15};
        double indexes5[4] = {i+16, i+17, i+18, i+19};
        double indexes6[4] = {i+20, i+21, i+22, i+23};
        double indexes7[4] = {i+24, i+25, i+26, i+27};
        double indexes8[4] = {i+28, i+29, i+30, i+31};

        ymm1 = _mm256_load_pd(indexes1);
        ymm1 = _mm256_mul_pd(ymm1, ymm0);

        ymm2 = _mm256_load_pd(indexes2);
        ymm2 = _mm256_mul_pd(ymm2, ymm0);

        ymm3 = _mm256_load_pd(indexes3);
        ymm3 = _mm256_mul_pd(ymm3, ymm0);

        ymm4 = _mm256_load_pd(indexes4);
        ymm4 = _mm256_mul_pd(ymm4, ymm0);

        ymm5 = _mm256_load_pd(indexes5);
        ymm5 = _mm256_mul_pd(ymm5, ymm0);

        ymm6 = _mm256_load_pd(indexes6);
        ymm6 = _mm256_mul_pd(ymm6, ymm0);

        ymm7 = _mm256_load_pd(indexes7);
        ymm7 = _mm256_mul_pd(ymm7, ymm0);

        ymm8 = _mm256_load_pd(indexes8);
        ymm8 = _mm256_mul_pd(ymm8, ymm0);

        _mm256_storeu_pd(&matrix[i], ymm1);
        _mm256_storeu_pd(&matrix[i+4], ymm2);
        _mm256_storeu_pd(&matrix[i+8], ymm3);
        _mm256_storeu_pd(&matrix[i+12], ymm4);
        _mm256_storeu_pd(&matrix[i+16], ymm5);
        _mm256_storeu_pd(&matrix[i+20], ymm6);
        _mm256_storeu_pd(&matrix[i+24], ymm7);
        _mm256_storeu_pd(&matrix[i+28], ymm8);
    }


    for (int j = 1; j < m; j++){
		matrix[j * n] = GAP * j;
	}
}

void init_matrix_kernel_60(int m, int n, double *restrict matrix){
    int size = 60;
    double gap_point[4] = {GAP, GAP, GAP, GAP};
    __m256d ymm0 = _mm256_load_pd(gap_point);

    __m256d ymm1;
    __m256d ymm2;
    __m256d ymm3;
    __m256d ymm4;
    __m256d ymm5;
    __m256d ymm6;
    __m256d ymm7;
    __m256d ymm8;
    __m256d ymm9;
    __m256d ymm10;
    __m256d ymm11;
    __m256d ymm12;
    __m256d ymm13;
    __m256d ymm14;
    __m256d ymm15;

    // #pragma omp parallel for num_threads(4)
    for (int i = 1; i < n; i += size){
        double indexes1[4] = {i, i+1, i+2, i+3};
        double indexes2[4] = {i+4, i+5, i+6, i+7};
        double indexes3[4] = {i+8, i+9, i+10, i+11};
        double indexes4[4] = {i+12, i+13, i+14, i+15};
        double indexes5[4] = {i+16, i+17, i+18, i+19};
        double indexes6[4] = {i+20, i+21, i+22, i+23};
        double indexes7[4] = {i+24, i+25, i+26, i+27};
        double indexes8[4] = {i+28, i+29, i+30, i+31};
        double indexes9[4] = {i+32, i+33, i+34, i+35};
        double indexes10[4] = {i+36, i+37, i+38, i+39};
        double indexes11[4] = {i+40, i+41, i+42, i+43};
        double indexes12[4] = {i+44, i+45, i+46, i+47};
        double indexes13[4] = {i+48, i+49, i+50, i+51};
        double indexes14[4] = {i+52, i+53, i+54, i+55};
        double indexes15[4] = {i+56, i+57, i+58, i+59};

        ymm1 = _mm256_load_pd(indexes1);
        ymm1 = _mm256_mul_pd(ymm1, ymm0);

        ymm2 = _mm256_load_pd(indexes2);
        ymm2 = _mm256_mul_pd(ymm2, ymm0);

        ymm3 = _mm256_load_pd(indexes3);
        ymm3 = _mm256_mul_pd(ymm3, ymm0);

        ymm4 = _mm256_load_pd(indexes4);
        ymm4 = _mm256_mul_pd(ymm4, ymm0);

        ymm5 = _mm256_load_pd(indexes5);
        ymm5 = _mm256_mul_pd(ymm5, ymm0);

        ymm6 = _mm256_load_pd(indexes6);
        ymm6 = _mm256_mul_pd(ymm6, ymm0);

        ymm7 = _mm256_load_pd(indexes7);
        ymm7 = _mm256_mul_pd(ymm7, ymm0);

        ymm8 = _mm256_load_pd(indexes8);
        ymm8 = _mm256_mul_pd(ymm8, ymm0);

        ymm9 = _mm256_load_pd(indexes9);
        ymm9 = _mm256_mul_pd(ymm9, ymm0);

        ymm10 = _mm256_load_pd(indexes10);
        ymm10 = _mm256_mul_pd(ymm10, ymm0);

        ymm11 = _mm256_load_pd(indexes11);
        ymm11 = _mm256_mul_pd(ymm11, ymm0);

        ymm12 = _mm256_load_pd(indexes12);
        ymm12 = _mm256_mul_pd(ymm12, ymm0);

        ymm13 = _mm256_load_pd(indexes13);
        ymm13 = _mm256_mul_pd(ymm13, ymm0);

        ymm14 = _mm256_load_pd(indexes14);
        ymm14 = _mm256_mul_pd(ymm14, ymm0);

        ymm15 = _mm256_load_pd(indexes15);
        ymm15 = _mm256_mul_pd(ymm15, ymm0);

        _mm256_storeu_pd(&matrix[i], ymm1);
        _mm256_storeu_pd(&matrix[i+4], ymm2);
        _mm256_storeu_pd(&matrix[i+8], ymm3);
        _mm256_storeu_pd(&matrix[i+12], ymm4);
        _mm256_storeu_pd(&matrix[i+16], ymm5);
        _mm256_storeu_pd(&matrix[i+20], ymm6);
        _mm256_storeu_pd(&matrix[i+24], ymm7);
        _mm256_storeu_pd(&matrix[i+28], ymm8);
        _mm256_storeu_pd(&matrix[i+32], ymm9);
        _mm256_storeu_pd(&matrix[i+36], ymm10);
        _mm256_storeu_pd(&matrix[i+40], ymm11);
        _mm256_storeu_pd(&matrix[i+44], ymm12);
        _mm256_storeu_pd(&matrix[i+48], ymm13);
        _mm256_storeu_pd(&matrix[i+52], ymm14);
        _mm256_storeu_pd(&matrix[i+56], ymm15);
    }


    for (int j = 1; j < m; j++){
		matrix[j * n] = GAP * j;
	}
}


void init_matrix_omp(int m, int n, double *matrix) {
    #pragma omp parallel for schedule (static, 8) num_threads(8)
	for (int i = 1; i < n; i++)
	{
		matrix[i] = GAP * i;
	}

    #pragma omp parallel for schedule (static, 8) num_threads(8)
	for (int j = 1; j < m; j++)
	{
		matrix[j * n] = GAP * j;
	}
}