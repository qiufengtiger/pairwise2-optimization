#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "immintrin.h"
#include "naive.h"

#define MATCH 1
#define MISMATCH -1
#define GAP -1



void noSIMD_nopack_kernel_4(
	int m,
	int n,
	double *restrict a,
	double *restrict b,
	double *restrict matrix) {

	int i = 0;
	int j = 0;
	int k = 0;
	int size = 4;

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
			int row1 = i, col1 = j;
			int row2 = i - 1, col2 = j + 1;
			int row3 = i - 2, col3 = j + 2;
			int row4 = i - 3, col4 = j + 3;
			double s1 = a[row1 - 1] == b[col1 - 1] ? MATCH : MISMATCH;
			double s2 = a[row2 - 1] == b[col2 - 1] ? MATCH : MISMATCH;
			double s3 = a[row3 - 1] == b[col3 - 1] ? MATCH : MISMATCH;
			double s4 = a[row4 - 1] == b[col4 - 1] ? MATCH : MISMATCH;

			matrix[row1 * n + col1] = max(matrix[(row1 - 1) * n + col1 - 1] + s1, matrix[(row1 - 1) * n + col1] + GAP, matrix[row1 * n + col1 - 1] + GAP);
			matrix[row2 * n + col2] = max(matrix[(row2 - 1) * n + col2 - 1] + s2, matrix[(row2 - 1) * n + col2] + GAP, matrix[row2 * n + col2 - 1] + GAP);
			matrix[row3 * n + col3] = max(matrix[(row3 - 1) * n + col3 - 1] + s3, matrix[(row3 - 1) * n + col3] + GAP, matrix[row3 * n + col3 - 1] + GAP);
			matrix[row4 * n + col4] = max(matrix[(row4 - 1) * n + col4 - 1] + s4, matrix[(row4 - 1) * n + col4] + GAP, matrix[row4 * n + col4 - 1] + GAP);
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

void nopack_kernel_4(
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
	// __m256d r1, r2;
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

			// r1 = _mm256_set_pd(a[row1 - 1], a[row2 - 1], a[row3 - 1], a[row4 - 1]);
			// r2 = _mm256_set_pd(b[col1 - 1], b[col2 - 1], b[col3 - 1], b[col4 - 1]);
			// r1 = _mm256_cmp_pd(r1, r2, _CMP_EQ_OQ);	
			// r2 = _mm256_and_pd(r1, MATCH_SCORE);
			// r1 = _mm256_andnot_pd(r1, MISMATCH_SCORE);
			// r1 = _mm256_or_pd(r1, r2);
			// r2 = _mm256_set_pd(matrix[(row1 - 1) * n + col1 - 1], matrix[(row2 - 1) * n + col2 - 1], matrix[(row3 - 1) * n + col3 - 1], matrix[(row4 - 1) * n + col4 - 1]);
			// r1 = _mm256_add_pd(r1, r2);
			// r2 = _mm256_set_pd(matrix[(row1 - 1) * n + col1], matrix[(row2 - 1) * n + col2], matrix[(row3 - 1) * n + col3], matrix[(row4 - 1) * n + col4]);
			// r1 = _mm256_max_pd(r1, r2);
			// r2 = _mm256_set_pd(matrix[row1 * n + col1 - 1], matrix[row2 * n + col2 - 1], matrix[row3 * n + col3 - 1], matrix[row4 * n + col4 - 1]);
			// r1 = _mm256_max_pd(r1, r2);
			// r1 = _mm256_add_pd(r1, GAP_SCORE);

			// _mm256_store_pd(result, r1);
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


void nopack_kernel_8(
	int m,
	int n,
	double *restrict a,
	double *restrict b,
	double *restrict matrix) {

	int size = 8;
	double match_point[4] = {MATCH - GAP, MATCH - GAP, MATCH - GAP, MATCH - GAP};
	double mismatch_point[4] = {MISMATCH - GAP, MISMATCH - GAP, MISMATCH - GAP, MISMATCH - GAP};
	double gap_point[4] = {GAP, GAP, GAP, GAP};
	__m256d MATCH_SCORE = _mm256_load_pd(match_point);
	__m256d MISMATCH_SCORE = _mm256_load_pd(mismatch_point);
	__m256d GAP_SCORE = _mm256_load_pd(gap_point);
	double result[8] = {0, 0, 0, 0, 0, 0, 0, 0};

	__m256d seq_A0, seq_B0, is_match0, match_score0, mismatch_score0, top_left0, left0, top0, best_score0;
	__m256d seq_A1, seq_B1, is_match1, match_score1, mismatch_score1, top_left1, left1, top1, best_score1;


	int row0, row1, row2, row3, row4, row5, row6, row7;
	int col0, col1, col2, col3, col4, col5, col6, col7;

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
 			 row0 = j - 0, col0 = i + 0;
			 row1 = j - 1, col1 = i + 1;
			 row2 = j - 2, col2 = i + 2;
			 row3 = j - 3, col3 = i + 3;
			 row4 = j - 4, col4 = i + 4;
			 row5 = j - 5, col5 = i + 5;
			 row6 = j - 6, col6 = i + 6;
			 row7 = j - 7, col7 = i + 7;

			seq_A0 = _mm256_set_pd(a[row0 - 1], a[row1 - 1], a[row2 - 1], a[row3 - 1]);
			seq_A1 = _mm256_set_pd(a[row4 - 1], a[row5 - 1], a[row6 - 1], a[row7 - 1]);

			seq_B0 = _mm256_set_pd(b[col0 - 1], b[col1 - 1], b[col2 - 1], b[col3 - 1]);
			seq_B1 = _mm256_set_pd(b[col4 - 1], b[col5 - 1], b[col6 - 1], b[col7 - 1]);

			is_match0 = _mm256_cmp_pd(seq_A0, seq_B0, _CMP_EQ_OQ);
			is_match1 = _mm256_cmp_pd(seq_A1, seq_B1, _CMP_EQ_OQ);

			match_score0 = _mm256_and_pd(is_match0, MATCH_SCORE);
			match_score1 = _mm256_and_pd(is_match1, MATCH_SCORE);

			mismatch_score0 = _mm256_andnot_pd(is_match0, MISMATCH_SCORE);
			mismatch_score1 = _mm256_andnot_pd(is_match1, MISMATCH_SCORE);

			match_score0 = _mm256_or_pd(match_score0, mismatch_score0);
			match_score1 = _mm256_or_pd(match_score1, mismatch_score1);

			top_left0 = _mm256_set_pd(matrix[(row0 - 1) * n + col0 - 1], matrix[(row1 - 1) * n + col1 - 1], matrix[(row2 - 1) * n + col2 - 1], matrix[(row3 - 1) * n + col3 - 1]);
			top_left1 = _mm256_set_pd(matrix[(row4 - 1) * n + col4 - 1], matrix[(row5 - 1) * n + col5 - 1], matrix[(row6 - 1) * n + col6 - 1], matrix[(row7 - 1) * n + col7 - 1]);

			best_score0 = _mm256_add_pd(top_left0, match_score0);
			best_score1 = _mm256_add_pd(top_left1, match_score1);

			left0 = _mm256_set_pd(matrix[(row0 - 1) * n + col0], matrix[(row1 - 1) * n + col1], matrix[(row2 - 1) * n + col2], matrix[(row3 - 1) * n + col3]);
			left1 = _mm256_set_pd(matrix[(row4 - 1) * n + col4], matrix[(row5 - 1) * n + col5], matrix[(row6 - 1) * n + col6], matrix[(row7 - 1) * n + col7]);

			best_score0 = _mm256_max_pd(best_score0, left0);
			best_score1 = _mm256_max_pd(best_score1, left1);

			top0 = _mm256_set_pd(matrix[row0 * n + col0 - 1], matrix[row1 * n + col1 - 1], matrix[row2 * n + col2 - 1], matrix[row3 * n + col3 - 1]);
			top1 = _mm256_set_pd(matrix[row4 * n + col4 - 1], matrix[row5 * n + col5 - 1], matrix[row6 * n + col6 - 1], matrix[row7 * n + col7 - 1]);

			best_score0 = _mm256_max_pd(best_score0, top0);
			best_score1 = _mm256_max_pd(best_score1, top1);

			best_score0 = _mm256_add_pd(best_score0, GAP_SCORE);
			best_score1 = _mm256_add_pd(best_score1, GAP_SCORE);

			_mm256_store_pd(result + 0, best_score0);
			_mm256_store_pd(result + 4, best_score1);

			matrix[row0 * n + col0] = result[3];
			matrix[row1 * n + col1] = result[2];
			matrix[row2 * n + col2] = result[1];
			matrix[row3 * n + col3] = result[0];
			matrix[row4 * n + col4] = result[7];
			matrix[row5 * n + col5] = result[6];
			matrix[row6 * n + col6] = result[5];
			matrix[row7 * n + col7] = result[4];
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


void nopack_kernel_16(
	int m,
	int n,
	double *restrict a,
	double *restrict b,
	double *restrict matrix) {

	int size = 16;
	double match_point[4] = {MATCH - GAP, MATCH - GAP, MATCH - GAP, MATCH - GAP};
	double mismatch_point[4] = {MISMATCH - GAP, MISMATCH - GAP, MISMATCH - GAP, MISMATCH - GAP};
	double gap_point[4] = {GAP, GAP, GAP, GAP};
	__m256d MATCH_SCORE = _mm256_load_pd(match_point);
	__m256d MISMATCH_SCORE = _mm256_load_pd(mismatch_point);
	__m256d GAP_SCORE = _mm256_load_pd(gap_point);
	double result[16] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

	__m256d seq_A0, seq_B0, is_match0, match_score0, mismatch_score0, top_left0, left0, top0, best_score0;
	__m256d seq_A1, seq_B1, is_match1, match_score1, mismatch_score1, top_left1, left1, top1, best_score1;
	__m256d seq_A2, seq_B2, is_match2, match_score2, mismatch_score2, top_left2, left2, top2, best_score2;
	__m256d seq_A3, seq_B3, is_match3, match_score3, mismatch_score3, top_left3, left3, top3, best_score3;


	int row0, row1, row2, row3, row4, row5, row6, row7, row8, row9, row10, row11, row12, row13, row14, row15;
	int col0, col1, col2, col3, col4, col5, col6, col7, col8, col9, col10, col11, col12, col13, col14, col15;

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
 			 row0 = j - 0, col0 = i + 0;
			 row1 = j - 1, col1 = i + 1;
			 row2 = j - 2, col2 = i + 2;
			 row3 = j - 3, col3 = i + 3;
			 row4 = j - 4, col4 = i + 4;
			 row5 = j - 5, col5 = i + 5;
			 row6 = j - 6, col6 = i + 6;
			 row7 = j - 7, col7 = i + 7;
			 row8 = j - 8, col8 = i + 8;
			 row9 = j - 9, col9 = i + 9;
			 row10 = j - 10, col10 = i + 10;
			 row11 = j - 11, col11 = i + 11;
			 row12 = j - 12, col12 = i + 12;
			 row13 = j - 13, col13 = i + 13;
			 row14 = j - 14, col14 = i + 14;
			 row15 = j - 15, col15 = i + 15;

			seq_A0 = _mm256_set_pd(a[row0 - 1], a[row1 - 1], a[row2 - 1], a[row3 - 1]);
			seq_A1 = _mm256_set_pd(a[row4 - 1], a[row5 - 1], a[row6 - 1], a[row7 - 1]);
			seq_A2 = _mm256_set_pd(a[row8 - 1], a[row9 - 1], a[row10 - 1], a[row11 - 1]);
			seq_A3 = _mm256_set_pd(a[row12 - 1], a[row13 - 1], a[row14 - 1], a[row15 - 1]);

			seq_B0 = _mm256_set_pd(b[col0 - 1], b[col1 - 1], b[col2 - 1], b[col3 - 1]);
			seq_B1 = _mm256_set_pd(b[col4 - 1], b[col5 - 1], b[col6 - 1], b[col7 - 1]);
			seq_B2 = _mm256_set_pd(b[col8 - 1], b[col9 - 1], b[col10 - 1], b[col11 - 1]);
			seq_B3 = _mm256_set_pd(b[col12 - 1], b[col13 - 1], b[col14 - 1], b[col15 - 1]);

			is_match0 = _mm256_cmp_pd(seq_A0, seq_B0, _CMP_EQ_OQ);
			is_match1 = _mm256_cmp_pd(seq_A1, seq_B1, _CMP_EQ_OQ);
			is_match2 = _mm256_cmp_pd(seq_A2, seq_B2, _CMP_EQ_OQ);
			is_match3 = _mm256_cmp_pd(seq_A3, seq_B3, _CMP_EQ_OQ);

			match_score0 = _mm256_and_pd(is_match0, MATCH_SCORE);
			match_score1 = _mm256_and_pd(is_match1, MATCH_SCORE);
			match_score2 = _mm256_and_pd(is_match2, MATCH_SCORE);
			match_score3 = _mm256_and_pd(is_match3, MATCH_SCORE);

			mismatch_score0 = _mm256_andnot_pd(is_match0, MISMATCH_SCORE);
			mismatch_score1 = _mm256_andnot_pd(is_match1, MISMATCH_SCORE);
			mismatch_score2 = _mm256_andnot_pd(is_match2, MISMATCH_SCORE);
			mismatch_score3 = _mm256_andnot_pd(is_match3, MISMATCH_SCORE);

			match_score0 = _mm256_or_pd(match_score0, mismatch_score0);
			match_score1 = _mm256_or_pd(match_score1, mismatch_score1);
			match_score2 = _mm256_or_pd(match_score2, mismatch_score2);
			match_score3 = _mm256_or_pd(match_score3, mismatch_score3);

			top_left0 = _mm256_set_pd(matrix[(row0 - 1) * n + col0 - 1], matrix[(row1 - 1) * n + col1 - 1], matrix[(row2 - 1) * n + col2 - 1], matrix[(row3 - 1) * n + col3 - 1]);
			top_left1 = _mm256_set_pd(matrix[(row4 - 1) * n + col4 - 1], matrix[(row5 - 1) * n + col5 - 1], matrix[(row6 - 1) * n + col6 - 1], matrix[(row7 - 1) * n + col7 - 1]);
			top_left2 = _mm256_set_pd(matrix[(row8 - 1) * n + col8 - 1], matrix[(row9 - 1) * n + col9 - 1], matrix[(row10 - 1) * n + col10 - 1], matrix[(row11 - 1) * n + col11 - 1]);
			top_left3 = _mm256_set_pd(matrix[(row12 - 1) * n + col12 - 1], matrix[(row13 - 1) * n + col13 - 1], matrix[(row14 - 1) * n + col14 - 1], matrix[(row15 - 1) * n + col15 - 1]);

			best_score0 = _mm256_add_pd(top_left0, match_score0);
			best_score1 = _mm256_add_pd(top_left1, match_score1);
			best_score2 = _mm256_add_pd(top_left2, match_score2);
			best_score3 = _mm256_add_pd(top_left3, match_score3);

			left0 = _mm256_set_pd(matrix[(row0 - 1) * n + col0], matrix[(row1 - 1) * n + col1], matrix[(row2 - 1) * n + col2], matrix[(row3 - 1) * n + col3]);
			left1 = _mm256_set_pd(matrix[(row4 - 1) * n + col4], matrix[(row5 - 1) * n + col5], matrix[(row6 - 1) * n + col6], matrix[(row7 - 1) * n + col7]);
			left2 = _mm256_set_pd(matrix[(row8 - 1) * n + col8], matrix[(row9 - 1) * n + col9], matrix[(row10 - 1) * n + col10], matrix[(row11 - 1) * n + col11]);
			left3 = _mm256_set_pd(matrix[(row12 - 1) * n + col12], matrix[(row13 - 1) * n + col13], matrix[(row14 - 1) * n + col14], matrix[(row15 - 1) * n + col15]);

			best_score0 = _mm256_max_pd(best_score0, left0);
			best_score1 = _mm256_max_pd(best_score1, left1);
			best_score2 = _mm256_max_pd(best_score2, left2);
			best_score3 = _mm256_max_pd(best_score3, left3);

			top0 = _mm256_set_pd(matrix[row0 * n + col0 - 1], matrix[row1 * n + col1 - 1], matrix[row2 * n + col2 - 1], matrix[row3 * n + col3 - 1]);
			top1 = _mm256_set_pd(matrix[row4 * n + col4 - 1], matrix[row5 * n + col5 - 1], matrix[row6 * n + col6 - 1], matrix[row7 * n + col7 - 1]);
			top2 = _mm256_set_pd(matrix[row8 * n + col8 - 1], matrix[row9 * n + col9 - 1], matrix[row10 * n + col10 - 1], matrix[row11 * n + col11 - 1]);
			top3 = _mm256_set_pd(matrix[row12 * n + col12 - 1], matrix[row13 * n + col13 - 1], matrix[row14 * n + col14 - 1], matrix[row15 * n + col15 - 1]);

			best_score0 = _mm256_max_pd(best_score0, top0);
			best_score1 = _mm256_max_pd(best_score1, top1);
			best_score2 = _mm256_max_pd(best_score2, top2);
			best_score3 = _mm256_max_pd(best_score3, top3);

			best_score0 = _mm256_add_pd(best_score0, GAP_SCORE);
			best_score1 = _mm256_add_pd(best_score1, GAP_SCORE);
			best_score2 = _mm256_add_pd(best_score2, GAP_SCORE);
			best_score3 = _mm256_add_pd(best_score3, GAP_SCORE);

			_mm256_store_pd(result + 0, best_score0);
			_mm256_store_pd(result + 4, best_score1);
			_mm256_store_pd(result + 8, best_score2);
			_mm256_store_pd(result + 12, best_score3);

			matrix[row0 * n + col0] = result[3];
			matrix[row1 * n + col1] = result[2];
			matrix[row2 * n + col2] = result[1];
			matrix[row3 * n + col3] = result[0];
			matrix[row4 * n + col4] = result[7];
			matrix[row5 * n + col5] = result[6];
			matrix[row6 * n + col6] = result[5];
			matrix[row7 * n + col7] = result[4];
			matrix[row8 * n + col8] = result[11];
			matrix[row9 * n + col9] = result[10];
			matrix[row10 * n + col10] = result[9];
			matrix[row11 * n + col11] = result[8];
			matrix[row12 * n + col12] = result[15];
			matrix[row13 * n + col13] = result[14];
			matrix[row14 * n + col14] = result[13];
			matrix[row15 * n + col15] = result[12];
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


void nopack_kernel_32(
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

	__m256d seq_A0, seq_B0, is_match0, match_score0, mismatch_score0, top_left0, left0, top0, best_score0;
	__m256d seq_A1, seq_B1, is_match1, match_score1, mismatch_score1, top_left1, left1, top1, best_score1;
	__m256d seq_A2, seq_B2, is_match2, match_score2, mismatch_score2, top_left2, left2, top2, best_score2;
	__m256d seq_A3, seq_B3, is_match3, match_score3, mismatch_score3, top_left3, left3, top3, best_score3;
	__m256d seq_A4, seq_B4, is_match4, match_score4, mismatch_score4, top_left4, left4, top4, best_score4;
	__m256d seq_A5, seq_B5, is_match5, match_score5, mismatch_score5, top_left5, left5, top5, best_score5;
	__m256d seq_A6, seq_B6, is_match6, match_score6, mismatch_score6, top_left6, left6, top6, best_score6;
	__m256d seq_A7, seq_B7, is_match7, match_score7, mismatch_score7, top_left7, left7, top7, best_score7;

	int row0, row1, row2, row3, row4, row5, row6, row7, row8, row9, row10, row11, row12, row13, row14, row15;
	int row16, row17, row18, row19, row20, row21, row22, row23, row24, row25, row26, row27, row28, row29, row30, row31;
	int col0, col1, col2, col3, col4, col5, col6, col7, col8, col9, col10, col11, col12, col13, col14, col15;
	int col16, col17, col18, col19, col20, col21, col22, col23, col24, col25, col26, col27, col28, col29, col30, col31;

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
 			 row0 = j - 0, col0 = i + 0;
			 row1 = j - 1, col1 = i + 1;
			 row2 = j - 2, col2 = i + 2;
			 row3 = j - 3, col3 = i + 3;
			 row4 = j - 4, col4 = i + 4;
			 row5 = j - 5, col5 = i + 5;
			 row6 = j - 6, col6 = i + 6;
			 row7 = j - 7, col7 = i + 7;
			 row8 = j - 8, col8 = i + 8;
			 row9 = j - 9, col9 = i + 9;
			 row10 = j - 10, col10 = i + 10;
			 row11 = j - 11, col11 = i + 11;
			 row12 = j - 12, col12 = i + 12;
			 row13 = j - 13, col13 = i + 13;
			 row14 = j - 14, col14 = i + 14;
			 row15 = j - 15, col15 = i + 15;
			 row16 = j - 16, col16 = i + 16;
			 row17 = j - 17, col17 = i + 17;
			 row18 = j - 18, col18 = i + 18;
			 row19 = j - 19, col19 = i + 19;
			 row20 = j - 20, col20 = i + 20;
			 row21 = j - 21, col21 = i + 21;
			 row22 = j - 22, col22 = i + 22;
			 row23 = j - 23, col23 = i + 23;
			 row24 = j - 24, col24 = i + 24;
			 row25 = j - 25, col25 = i + 25;
			 row26 = j - 26, col26 = i + 26;
			 row27 = j - 27, col27 = i + 27;
			 row28 = j - 28, col28 = i + 28;
			 row29 = j - 29, col29 = i + 29;
			 row30 = j - 30, col30 = i + 30;
			 row31 = j - 31, col31 = i + 31;

			seq_A0 = _mm256_set_pd(a[row0 - 1], a[row1 - 1], a[row2 - 1], a[row3 - 1]);
			seq_A1 = _mm256_set_pd(a[row4 - 1], a[row5 - 1], a[row6 - 1], a[row7 - 1]);
			seq_A2 = _mm256_set_pd(a[row8 - 1], a[row9 - 1], a[row10 - 1], a[row11 - 1]);
			seq_A3 = _mm256_set_pd(a[row12 - 1], a[row13 - 1], a[row14 - 1], a[row15 - 1]);
			seq_A4 = _mm256_set_pd(a[row16 - 1], a[row17 - 1], a[row18 - 1], a[row19 - 1]);
			seq_A5 = _mm256_set_pd(a[row20 - 1], a[row21 - 1], a[row22 - 1], a[row23 - 1]);
			seq_A6 = _mm256_set_pd(a[row24 - 1], a[row25 - 1], a[row26 - 1], a[row27 - 1]);
			seq_A7 = _mm256_set_pd(a[row28 - 1], a[row29 - 1], a[row30 - 1], a[row31 - 1]);

			seq_B0 = _mm256_set_pd(b[col0 - 1], b[col1 - 1], b[col2 - 1], b[col3 - 1]);
			seq_B1 = _mm256_set_pd(b[col4 - 1], b[col5 - 1], b[col6 - 1], b[col7 - 1]);
			seq_B2 = _mm256_set_pd(b[col8 - 1], b[col9 - 1], b[col10 - 1], b[col11 - 1]);
			seq_B3 = _mm256_set_pd(b[col12 - 1], b[col13 - 1], b[col14 - 1], b[col15 - 1]);
			seq_B4 = _mm256_set_pd(b[col16 - 1], b[col17 - 1], b[col18 - 1], b[col19 - 1]);
			seq_B5 = _mm256_set_pd(b[col20 - 1], b[col21 - 1], b[col22 - 1], b[col23 - 1]);
			seq_B6 = _mm256_set_pd(b[col24 - 1], b[col25 - 1], b[col26 - 1], b[col27 - 1]);
			seq_B7 = _mm256_set_pd(b[col28 - 1], b[col29 - 1], b[col30 - 1], b[col31 - 1]);

			is_match0 = _mm256_cmp_pd(seq_A0, seq_B0, _CMP_EQ_OQ);
			is_match1 = _mm256_cmp_pd(seq_A1, seq_B1, _CMP_EQ_OQ);
			is_match2 = _mm256_cmp_pd(seq_A2, seq_B2, _CMP_EQ_OQ);
			is_match3 = _mm256_cmp_pd(seq_A3, seq_B3, _CMP_EQ_OQ);
			is_match4 = _mm256_cmp_pd(seq_A4, seq_B4, _CMP_EQ_OQ);
			is_match5 = _mm256_cmp_pd(seq_A5, seq_B5, _CMP_EQ_OQ);
			is_match6 = _mm256_cmp_pd(seq_A6, seq_B6, _CMP_EQ_OQ);
			is_match7 = _mm256_cmp_pd(seq_A7, seq_B7, _CMP_EQ_OQ);

			match_score0 = _mm256_and_pd(is_match0, MATCH_SCORE);
			match_score1 = _mm256_and_pd(is_match1, MATCH_SCORE);
			match_score2 = _mm256_and_pd(is_match2, MATCH_SCORE);
			match_score3 = _mm256_and_pd(is_match3, MATCH_SCORE);
			match_score4 = _mm256_and_pd(is_match4, MATCH_SCORE);
			match_score5 = _mm256_and_pd(is_match5, MATCH_SCORE);
			match_score6 = _mm256_and_pd(is_match6, MATCH_SCORE);
			match_score7 = _mm256_and_pd(is_match7, MATCH_SCORE);

			mismatch_score0 = _mm256_andnot_pd(is_match0, MISMATCH_SCORE);
			mismatch_score1 = _mm256_andnot_pd(is_match1, MISMATCH_SCORE);
			mismatch_score2 = _mm256_andnot_pd(is_match2, MISMATCH_SCORE);
			mismatch_score3 = _mm256_andnot_pd(is_match3, MISMATCH_SCORE);
			mismatch_score4 = _mm256_andnot_pd(is_match4, MISMATCH_SCORE);
			mismatch_score5 = _mm256_andnot_pd(is_match5, MISMATCH_SCORE);
			mismatch_score6 = _mm256_andnot_pd(is_match6, MISMATCH_SCORE);
			mismatch_score7 = _mm256_andnot_pd(is_match7, MISMATCH_SCORE);

			match_score0 = _mm256_or_pd(match_score0, mismatch_score0);
			match_score1 = _mm256_or_pd(match_score1, mismatch_score1);
			match_score2 = _mm256_or_pd(match_score2, mismatch_score2);
			match_score3 = _mm256_or_pd(match_score3, mismatch_score3);
			match_score4 = _mm256_or_pd(match_score4, mismatch_score4);
			match_score5 = _mm256_or_pd(match_score5, mismatch_score5);
			match_score6 = _mm256_or_pd(match_score6, mismatch_score6);
			match_score7 = _mm256_or_pd(match_score7, mismatch_score7);

			top_left0 = _mm256_set_pd(matrix[(row0 - 1) * n + col0 - 1], matrix[(row1 - 1) * n + col1 - 1], matrix[(row2 - 1) * n + col2 - 1], matrix[(row3 - 1) * n + col3 - 1]);
			top_left1 = _mm256_set_pd(matrix[(row4 - 1) * n + col4 - 1], matrix[(row5 - 1) * n + col5 - 1], matrix[(row6 - 1) * n + col6 - 1], matrix[(row7 - 1) * n + col7 - 1]);
			top_left2 = _mm256_set_pd(matrix[(row8 - 1) * n + col8 - 1], matrix[(row9 - 1) * n + col9 - 1], matrix[(row10 - 1) * n + col10 - 1], matrix[(row11 - 1) * n + col11 - 1]);
			top_left3 = _mm256_set_pd(matrix[(row12 - 1) * n + col12 - 1], matrix[(row13 - 1) * n + col13 - 1], matrix[(row14 - 1) * n + col14 - 1], matrix[(row15 - 1) * n + col15 - 1]);
			top_left4 = _mm256_set_pd(matrix[(row16 - 1) * n + col16 - 1], matrix[(row17 - 1) * n + col17 - 1], matrix[(row18 - 1) * n + col18 - 1], matrix[(row19 - 1) * n + col19 - 1]);
			top_left5 = _mm256_set_pd(matrix[(row20 - 1) * n + col20 - 1], matrix[(row21 - 1) * n + col21 - 1], matrix[(row22 - 1) * n + col22 - 1], matrix[(row23 - 1) * n + col23 - 1]);
			top_left6 = _mm256_set_pd(matrix[(row24 - 1) * n + col24 - 1], matrix[(row25 - 1) * n + col25 - 1], matrix[(row26 - 1) * n + col26 - 1], matrix[(row27 - 1) * n + col27 - 1]);
			top_left7 = _mm256_set_pd(matrix[(row28 - 1) * n + col28 - 1], matrix[(row29 - 1) * n + col29 - 1], matrix[(row30 - 1) * n + col30 - 1], matrix[(row31 - 1) * n + col31 - 1]);

			best_score0 = _mm256_add_pd(top_left0, match_score0);
			best_score1 = _mm256_add_pd(top_left1, match_score1);
			best_score2 = _mm256_add_pd(top_left2, match_score2);
			best_score3 = _mm256_add_pd(top_left3, match_score3);
			best_score4 = _mm256_add_pd(top_left4, match_score4);
			best_score5 = _mm256_add_pd(top_left5, match_score5);
			best_score6 = _mm256_add_pd(top_left6, match_score6);
			best_score7 = _mm256_add_pd(top_left7, match_score7);

			left0 = _mm256_set_pd(matrix[(row0 - 1) * n + col0], matrix[(row1 - 1) * n + col1], matrix[(row2 - 1) * n + col2], matrix[(row3 - 1) * n + col3]);
			left1 = _mm256_set_pd(matrix[(row4 - 1) * n + col4], matrix[(row5 - 1) * n + col5], matrix[(row6 - 1) * n + col6], matrix[(row7 - 1) * n + col7]);
			left2 = _mm256_set_pd(matrix[(row8 - 1) * n + col8], matrix[(row9 - 1) * n + col9], matrix[(row10 - 1) * n + col10], matrix[(row11 - 1) * n + col11]);
			left3 = _mm256_set_pd(matrix[(row12 - 1) * n + col12], matrix[(row13 - 1) * n + col13], matrix[(row14 - 1) * n + col14], matrix[(row15 - 1) * n + col15]);
			left4 = _mm256_set_pd(matrix[(row16 - 1) * n + col16], matrix[(row17 - 1) * n + col17], matrix[(row18 - 1) * n + col18], matrix[(row19 - 1) * n + col19]);
			left5 = _mm256_set_pd(matrix[(row20 - 1) * n + col20], matrix[(row21 - 1) * n + col21], matrix[(row22 - 1) * n + col22], matrix[(row23 - 1) * n + col23]);
			left6 = _mm256_set_pd(matrix[(row24 - 1) * n + col24], matrix[(row25 - 1) * n + col25], matrix[(row26 - 1) * n + col26], matrix[(row27 - 1) * n + col27]);
			left7 = _mm256_set_pd(matrix[(row28 - 1) * n + col28], matrix[(row29 - 1) * n + col29], matrix[(row30 - 1) * n + col30], matrix[(row31 - 1) * n + col31]);

			best_score0 = _mm256_max_pd(best_score0, left0);
			best_score1 = _mm256_max_pd(best_score1, left1);
			best_score2 = _mm256_max_pd(best_score2, left2);
			best_score3 = _mm256_max_pd(best_score3, left3);
			best_score4 = _mm256_max_pd(best_score4, left4);
			best_score5 = _mm256_max_pd(best_score5, left5);
			best_score6 = _mm256_max_pd(best_score6, left6);
			best_score7 = _mm256_max_pd(best_score7, left7);

			top0 = _mm256_set_pd(matrix[row0 * n + col0 - 1], matrix[row1 * n + col1 - 1], matrix[row2 * n + col2 - 1], matrix[row3 * n + col3 - 1]);
			top1 = _mm256_set_pd(matrix[row4 * n + col4 - 1], matrix[row5 * n + col5 - 1], matrix[row6 * n + col6 - 1], matrix[row7 * n + col7 - 1]);
			top2 = _mm256_set_pd(matrix[row8 * n + col8 - 1], matrix[row9 * n + col9 - 1], matrix[row10 * n + col10 - 1], matrix[row11 * n + col11 - 1]);
			top3 = _mm256_set_pd(matrix[row12 * n + col12 - 1], matrix[row13 * n + col13 - 1], matrix[row14 * n + col14 - 1], matrix[row15 * n + col15 - 1]);
			top4 = _mm256_set_pd(matrix[row16 * n + col16 - 1], matrix[row17 * n + col17 - 1], matrix[row18 * n + col18 - 1], matrix[row19 * n + col19 - 1]);
			top5 = _mm256_set_pd(matrix[row20 * n + col20 - 1], matrix[row21 * n + col21 - 1], matrix[row22 * n + col22 - 1], matrix[row23 * n + col23 - 1]);
			top6 = _mm256_set_pd(matrix[row24 * n + col24 - 1], matrix[row25 * n + col25 - 1], matrix[row26 * n + col26 - 1], matrix[row27 * n + col27 - 1]);
			top7 = _mm256_set_pd(matrix[row28 * n + col28 - 1], matrix[row29 * n + col29 - 1], matrix[row30 * n + col30 - 1], matrix[row31 * n + col31 - 1]);

			best_score0 = _mm256_max_pd(best_score0, top0);
			best_score1 = _mm256_max_pd(best_score1, top1);
			best_score2 = _mm256_max_pd(best_score2, top2);
			best_score3 = _mm256_max_pd(best_score3, top3);
			best_score4 = _mm256_max_pd(best_score4, top4);
			best_score5 = _mm256_max_pd(best_score5, top5);
			best_score6 = _mm256_max_pd(best_score6, top6);
			best_score7 = _mm256_max_pd(best_score7, top7);

			best_score0 = _mm256_add_pd(best_score0, GAP_SCORE);
			best_score1 = _mm256_add_pd(best_score1, GAP_SCORE);
			best_score2 = _mm256_add_pd(best_score2, GAP_SCORE);
			best_score3 = _mm256_add_pd(best_score3, GAP_SCORE);
			best_score4 = _mm256_add_pd(best_score4, GAP_SCORE);
			best_score5 = _mm256_add_pd(best_score5, GAP_SCORE);
			best_score6 = _mm256_add_pd(best_score6, GAP_SCORE);
			best_score7 = _mm256_add_pd(best_score7, GAP_SCORE);

			_mm256_store_pd(result + 0, best_score0);
			_mm256_store_pd(result + 4, best_score1);
			_mm256_store_pd(result + 8, best_score2);
			_mm256_store_pd(result + 12, best_score3);
			_mm256_store_pd(result + 16, best_score4);
			_mm256_store_pd(result + 20, best_score5);
			_mm256_store_pd(result + 24, best_score6);
			_mm256_store_pd(result + 28, best_score7);

			matrix[row0 * n + col0] = result[3];
			matrix[row1 * n + col1] = result[2];
			matrix[row2 * n + col2] = result[1];
			matrix[row3 * n + col3] = result[0];
			matrix[row4 * n + col4] = result[7];
			matrix[row5 * n + col5] = result[6];
			matrix[row6 * n + col6] = result[5];
			matrix[row7 * n + col7] = result[4];
			matrix[row8 * n + col8] = result[11];
			matrix[row9 * n + col9] = result[10];
			matrix[row10 * n + col10] = result[9];
			matrix[row11 * n + col11] = result[8];
			matrix[row12 * n + col12] = result[15];
			matrix[row13 * n + col13] = result[14];
			matrix[row14 * n + col14] = result[13];
			matrix[row15 * n + col15] = result[12];
			matrix[row16 * n + col16] = result[19];
			matrix[row17 * n + col17] = result[18];
			matrix[row18 * n + col18] = result[17];
			matrix[row19 * n + col19] = result[16];
			matrix[row20 * n + col20] = result[23];
			matrix[row21 * n + col21] = result[22];
			matrix[row22 * n + col22] = result[21];
			matrix[row23 * n + col23] = result[20];
			matrix[row24 * n + col24] = result[27];
			matrix[row25 * n + col25] = result[26];
			matrix[row26 * n + col26] = result[25];
			matrix[row27 * n + col27] = result[24];
			matrix[row28 * n + col28] = result[31];
			matrix[row29 * n + col29] = result[30];
			matrix[row30 * n + col30] = result[29];
			matrix[row31 * n + col31] = result[28];
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