#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

#include "immintrin.h"
#include "naive.h"


#define MATCH 1
#define MISMATCH -1
#define GAP -1


void noSIMD_packed_kernel_4(
	int m,
	int n,
	double *restrict a,
	double *restrict b,
	double *restrict packed) {

	// double match_point[4] = {MATCH - GAP, MATCH - GAP, MATCH - GAP, MATCH - GAP};
	// double mismatch_point[4] = {MISMATCH - GAP, MISMATCH - GAP, MISMATCH - GAP, MISMATCH - GAP};
	// double gap_point[4] = {GAP, GAP, GAP, GAP};

	int i = 0;
	int j = 0;
	int k = 0;
	int size = 4;

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
		for (; i < j + 1 + m - 1; i ++) {
			// reindex: match_score start at s0 now
			int old_i_0 = i - j;
			int old_j_0 = j;
			double s0 = (a[old_i_0 - 1 - 0] == b[old_j_0 - 1 + 0]) ? MATCH : MISMATCH;
			double s1 = (a[old_i_0 - 1 - 1] == b[old_j_0 - 1 + 1]) ? MATCH : MISMATCH;
			double s2 = (a[old_i_0 - 1 - 2] == b[old_j_0 - 1 + 2]) ? MATCH : MISMATCH;
			double s3 = (a[old_i_0 - 1 - 3] == b[old_j_0 - 1 + 3]) ? MATCH : MISMATCH;

			packed[i * n + (j + 0)] = max(
				packed[(i - 2) * n + (j + 0) - 1] + s0,
				packed[(i - 1) * n + (j + 0) - 1] + GAP,
				packed[(i - 1) * n + (j + 0)] + GAP);
			packed[i * n + (j + 1)] = max(
				packed[(i - 2) * n + (j + 1) - 1] + s1,
				packed[(i - 1) * n + (j + 1) - 1] + GAP,
				packed[(i - 1) * n + (j + 1)] + GAP);
			packed[i * n + (j + 2)] = max(
				packed[(i - 2) * n + (j + 2) - 1] + s2,
				packed[(i - 1) * n + (j + 2) - 1] + GAP,
				packed[(i - 1) * n + (j + 2)] + GAP);
			packed[i * n + (j + 3)] = max(
				packed[(i - 2) * n + (j + 3) - 1] + s3,
				packed[(i - 1) * n + (j + 3) - 1] + GAP,
				packed[(i - 1) * n + (j + 3)] + GAP);
		}
		i = j + 1 + m - 1;
		for (; i < j + 1 + m - 1 + size - 1; i ++) {
			for (k = j + 1 + i - (j + 1 + m - 1); k < j + size; k ++) {
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
}

void packed_kernel_4(
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

	int i = 0;
	int j = 0;
	int k = 0;
	int size = 4;

	__m256d seq_A, seq_B, is_match, match_score, mismatch_score, both_prev, A_prev, B_prev, best_score;

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



			seq_A = _mm256_load_pd(&a[old_i_0 - 1 - 3]);
			seq_A = _mm256_permute4x64_pd(seq_A, 0b00011011);
			seq_B = _mm256_load_pd(&b[old_j_0 - 1 + 0]);
			
			is_match = _mm256_cmp_pd(seq_A, seq_B, _CMP_EQ_OQ);	
			match_score = _mm256_and_pd(is_match, MATCH_SCORE);
			mismatch_score = _mm256_andnot_pd(is_match, MISMATCH_SCORE);
			match_score = _mm256_or_pd(match_score, mismatch_score);


			both_prev = _mm256_load_pd(&packed[(i - 2) * n + j - 1]);
			A_prev = _mm256_load_pd(&packed[(i - 1) * n + j - 1]);
			B_prev = _mm256_load_pd(&packed[(i - 1) * n + j]);

			both_prev = _mm256_add_pd(both_prev, match_score);


			best_score = _mm256_max_pd(both_prev, A_prev);
			best_score = _mm256_max_pd(best_score, B_prev);
			best_score = _mm256_add_pd(best_score, GAP_SCORE);

			_mm256_storeu_pd(&packed[i * n + (j + 0)], best_score);
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
}


void packed_kernel_16(
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

	int i = 0;
	int j = 0;
	int k = 0;
	int size = 16;

	__m256d seq_A, seq_B, is_match, match_score, mismatch_score, both_prev, A_prev, B_prev, best_score;
	__m256d seq_A1, seq_B1, is_match1, match_score1, mismatch_score1, both_prev1, A_prev1, B_prev1, best_score1;
	__m256d seq_A2, seq_B2, is_match2, match_score2, mismatch_score2, both_prev2, A_prev2, B_prev2, best_score2;
	__m256d seq_A3, seq_B3, is_match3, match_score3, mismatch_score3, both_prev3, A_prev3, B_prev3, best_score3;

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

			seq_A = _mm256_load_pd(&a[old_i_0 - 1 - 3]);
			seq_A = _mm256_permute4x64_pd(seq_A, 0b00011011);
			seq_B = _mm256_load_pd(&b[old_j_0 - 1]);

			seq_A1 = _mm256_load_pd(&a[old_i_0 - 1 - 7]);
			seq_A1 = _mm256_permute4x64_pd(seq_A1, 0b00011011);
			seq_B1 = _mm256_load_pd(&b[old_j_0 - 1 + 4]);

			seq_A2 = _mm256_load_pd(&a[old_i_0 - 1 - 11]);
			seq_A2 = _mm256_permute4x64_pd(seq_A2, 0b00011011);
			seq_B2 = _mm256_load_pd(&b[old_j_0 - 1 + 8]);

			seq_A3 = _mm256_load_pd(&a[old_i_0 - 1 - 15]);
			seq_A3 = _mm256_permute4x64_pd(seq_A3, 0b00011011);
			seq_B3 = _mm256_load_pd(&b[old_j_0 - 1 + 12]);
			
			is_match = _mm256_cmp_pd(seq_A, seq_B, _CMP_EQ_OQ);	
			match_score = _mm256_and_pd(is_match, MATCH_SCORE);
			mismatch_score = _mm256_andnot_pd(is_match, MISMATCH_SCORE);
			match_score = _mm256_or_pd(match_score, mismatch_score);

			is_match1 = _mm256_cmp_pd(seq_A1, seq_B1, _CMP_EQ_OQ);	
			match_score1 = _mm256_and_pd(is_match1, MATCH_SCORE);
			mismatch_score1 = _mm256_andnot_pd(is_match1, MISMATCH_SCORE);
			match_score1 = _mm256_or_pd(match_score1, mismatch_score1);

			is_match2 = _mm256_cmp_pd(seq_A2, seq_B2, _CMP_EQ_OQ);	
			match_score2 = _mm256_and_pd(is_match2, MATCH_SCORE);
			mismatch_score2 = _mm256_andnot_pd(is_match2, MISMATCH_SCORE);
			match_score2 = _mm256_or_pd(match_score2, mismatch_score2);

			is_match3 = _mm256_cmp_pd(seq_A3, seq_B3, _CMP_EQ_OQ);	
			match_score3 = _mm256_and_pd(is_match3, MATCH_SCORE);
			mismatch_score3 = _mm256_andnot_pd(is_match3, MISMATCH_SCORE);
			match_score3 = _mm256_or_pd(match_score3, mismatch_score3);


			both_prev = _mm256_loadu_pd(&packed[(i - 2) * n + j - 1]);
			A_prev = _mm256_loadu_pd(&packed[(i - 1) * n + j - 1]);
			B_prev = _mm256_loadu_pd(&packed[(i - 1) * n + j]);

			both_prev1 = _mm256_loadu_pd(&packed[(i - 2) * n + j - 1 + 4]);
			A_prev1 = _mm256_loadu_pd(&packed[(i - 1) * n + j - 1 + 4]);
			B_prev1 = _mm256_loadu_pd(&packed[(i - 1) * n + j + 4]);

			both_prev2 = _mm256_loadu_pd(&packed[(i - 2) * n + j - 1 + 8]);
			A_prev2 = _mm256_loadu_pd(&packed[(i - 1) * n + j - 1] + 8);
			B_prev2 = _mm256_loadu_pd(&packed[(i - 1) * n + j] + 8);

			both_prev3 = _mm256_loadu_pd(&packed[(i - 2) * n + j - 1 + 12]);
			A_prev3 = _mm256_loadu_pd(&packed[(i - 1) * n + j - 1 + 12]);
			B_prev3 = _mm256_loadu_pd(&packed[(i - 1) * n + j + 12]);

			both_prev = _mm256_add_pd(both_prev, match_score);
			both_prev1 = _mm256_add_pd(both_prev1, match_score1);
			both_prev2 = _mm256_add_pd(both_prev2, match_score2);
			both_prev3 = _mm256_add_pd(both_prev3, match_score3);

			best_score = _mm256_max_pd(both_prev, A_prev);
			best_score1 = _mm256_max_pd(both_prev1, A_prev1);
			best_score2 = _mm256_max_pd(both_prev2, A_prev2);
			best_score3 = _mm256_max_pd(both_prev3, A_prev3);

			best_score = _mm256_max_pd(best_score, B_prev);
			best_score1 = _mm256_max_pd(best_score1, B_prev1);
			best_score2 = _mm256_max_pd(best_score2, B_prev2);
			best_score3 = _mm256_max_pd(best_score3, B_prev3);

			best_score = _mm256_add_pd(best_score, GAP_SCORE);
			best_score1 = _mm256_add_pd(best_score1, GAP_SCORE);
			best_score2 = _mm256_add_pd(best_score2, GAP_SCORE);
			best_score3 = _mm256_add_pd(best_score3, GAP_SCORE);

			_mm256_storeu_pd(&packed[i * n + (j + 0)], best_score);
			_mm256_storeu_pd(&packed[i * n + (j + 0) + 4], best_score1);
			_mm256_storeu_pd(&packed[i * n + (j + 0) + 8], best_score2);
			_mm256_storeu_pd(&packed[i * n + (j + 0) + 12], best_score3);
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
	
}


void packed_kernel_32(
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

	int i = 0;
	int j = 0;
	int k = 0;
	int size = 32;

	__m256d seq_A, seq_B, is_match, match_score, mismatch_score, both_prev, A_prev, B_prev, best_score;
	__m256d seq_A1, seq_B1, is_match1, match_score1, mismatch_score1, both_prev1, A_prev1, B_prev1, best_score1;
	__m256d seq_A2, seq_B2, is_match2, match_score2, mismatch_score2, both_prev2, A_prev2, B_prev2, best_score2;
	__m256d seq_A3, seq_B3, is_match3, match_score3, mismatch_score3, both_prev3, A_prev3, B_prev3, best_score3;
	__m256d seq_A4, seq_B4, is_match4, match_score4, mismatch_score4, both_prev4, A_prev4, B_prev4, best_score4;
	__m256d seq_A5, seq_B5, is_match5, match_score5, mismatch_score5, both_prev5, A_prev5, B_prev5, best_score5;
	__m256d seq_A6, seq_B6, is_match6, match_score6, mismatch_score6, both_prev6, A_prev6, B_prev6, best_score6;
	__m256d seq_A7, seq_B7, is_match7, match_score7, mismatch_score7, both_prev7, A_prev7, B_prev7, best_score7;

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

			seq_A = _mm256_load_pd(&a[old_i_0 - 1 - 3]);
			seq_A = _mm256_permute4x64_pd(seq_A, 0b00011011);
			seq_B = _mm256_load_pd(&b[old_j_0 - 1]);

			seq_A1 = _mm256_load_pd(&a[old_i_0 - 1 - 7]);
			seq_A1 = _mm256_permute4x64_pd(seq_A1, 0b00011011);
			seq_B1 = _mm256_load_pd(&b[old_j_0 - 1 + 4]);

			seq_A2 = _mm256_load_pd(&a[old_i_0 - 1 - 11]);
			seq_A2 = _mm256_permute4x64_pd(seq_A2, 0b00011011);
			seq_B2 = _mm256_load_pd(&b[old_j_0 - 1 + 8]);

			seq_A3 = _mm256_load_pd(&a[old_i_0 - 1 - 15]);
			seq_A3 = _mm256_permute4x64_pd(seq_A3, 0b00011011);
			seq_B3 = _mm256_load_pd(&b[old_j_0 - 1 + 12]);

			seq_A4 = _mm256_load_pd(&a[old_i_0 - 1 - 19]);
			seq_A4 = _mm256_permute4x64_pd(seq_A4, 0b00011011);
			seq_B4 = _mm256_load_pd(&b[old_j_0 - 1 + 16]);

			seq_A5 = _mm256_load_pd(&a[old_i_0 - 1 - 23]);
			seq_A5 = _mm256_permute4x64_pd(seq_A5, 0b00011011);
			seq_B5 = _mm256_load_pd(&b[old_j_0 - 1 + 20]);

			seq_A6 = _mm256_load_pd(&a[old_i_0 - 1 - 27]);
			seq_A6 = _mm256_permute4x64_pd(seq_A6, 0b00011011);
			seq_B6 = _mm256_load_pd(&b[old_j_0 - 1 + 24]);

			seq_A7 = _mm256_load_pd(&a[old_i_0 - 1 - 31]);
			seq_A7 = _mm256_permute4x64_pd(seq_A7, 0b00011011);
			seq_B7 = _mm256_load_pd(&b[old_j_0 - 1 + 28]);
			
			is_match = _mm256_cmp_pd(seq_A, seq_B, _CMP_EQ_OQ);	
			match_score = _mm256_and_pd(is_match, MATCH_SCORE);
			mismatch_score = _mm256_andnot_pd(is_match, MISMATCH_SCORE);
			match_score = _mm256_or_pd(match_score, mismatch_score);

			is_match1 = _mm256_cmp_pd(seq_A1, seq_B1, _CMP_EQ_OQ);	
			match_score1 = _mm256_and_pd(is_match1, MATCH_SCORE);
			mismatch_score1 = _mm256_andnot_pd(is_match1, MISMATCH_SCORE);
			match_score1 = _mm256_or_pd(match_score1, mismatch_score1);

			is_match2 = _mm256_cmp_pd(seq_A2, seq_B2, _CMP_EQ_OQ);	
			match_score2 = _mm256_and_pd(is_match2, MATCH_SCORE);
			mismatch_score2 = _mm256_andnot_pd(is_match2, MISMATCH_SCORE);
			match_score2 = _mm256_or_pd(match_score2, mismatch_score2);

			is_match3 = _mm256_cmp_pd(seq_A3, seq_B3, _CMP_EQ_OQ);	
			match_score3 = _mm256_and_pd(is_match3, MATCH_SCORE);
			mismatch_score3 = _mm256_andnot_pd(is_match3, MISMATCH_SCORE);
			match_score3 = _mm256_or_pd(match_score3, mismatch_score3);

			is_match4 = _mm256_cmp_pd(seq_A4, seq_B4, _CMP_EQ_OQ);	
			match_score4 = _mm256_and_pd(is_match4, MATCH_SCORE);
			mismatch_score4 = _mm256_andnot_pd(is_match4, MISMATCH_SCORE);
			match_score4 = _mm256_or_pd(match_score4, mismatch_score4);

			is_match5 = _mm256_cmp_pd(seq_A5, seq_B5, _CMP_EQ_OQ);	
			match_score5 = _mm256_and_pd(is_match5, MATCH_SCORE);
			mismatch_score5 = _mm256_andnot_pd(is_match5, MISMATCH_SCORE);
			match_score5 = _mm256_or_pd(match_score5, mismatch_score5);

			is_match6 = _mm256_cmp_pd(seq_A6, seq_B6, _CMP_EQ_OQ);	
			match_score6 = _mm256_and_pd(is_match6, MATCH_SCORE);
			mismatch_score6 = _mm256_andnot_pd(is_match6, MISMATCH_SCORE);
			match_score6 = _mm256_or_pd(match_score6, mismatch_score6);

			is_match7 = _mm256_cmp_pd(seq_A7, seq_B7, _CMP_EQ_OQ);	
			match_score7 = _mm256_and_pd(is_match7, MATCH_SCORE);
			mismatch_score7 = _mm256_andnot_pd(is_match7, MISMATCH_SCORE);
			match_score7 = _mm256_or_pd(match_score7, mismatch_score7);


			both_prev = _mm256_loadu_pd(&packed[(i - 2) * n + j - 1]);
			A_prev = _mm256_loadu_pd(&packed[(i - 1) * n + j - 1]);
			B_prev = _mm256_loadu_pd(&packed[(i - 1) * n + j]);

			both_prev1 = _mm256_loadu_pd(&packed[(i - 2) * n + j - 1 + 4]);
			A_prev1 = _mm256_loadu_pd(&packed[(i - 1) * n + j - 1 + 4]);
			B_prev1 = _mm256_loadu_pd(&packed[(i - 1) * n + j + 4]);

			both_prev2 = _mm256_loadu_pd(&packed[(i - 2) * n + j - 1 + 8]);
			A_prev2 = _mm256_loadu_pd(&packed[(i - 1) * n + j - 1] + 8);
			B_prev2 = _mm256_loadu_pd(&packed[(i - 1) * n + j] + 8);

			both_prev3 = _mm256_loadu_pd(&packed[(i - 2) * n + j - 1 + 12]);
			A_prev3 = _mm256_loadu_pd(&packed[(i - 1) * n + j - 1 + 12]);
			B_prev3 = _mm256_loadu_pd(&packed[(i - 1) * n + j + 12]);

			both_prev4 = _mm256_loadu_pd(&packed[(i - 2) * n + j - 1 + 16]);
			A_prev4 = _mm256_loadu_pd(&packed[(i - 1) * n + j - 1 + 16]);
			B_prev4 = _mm256_loadu_pd(&packed[(i - 1) * n + j + 16]);

			both_prev5 = _mm256_loadu_pd(&packed[(i - 2) * n + j - 1 + 20]);
			A_prev5 = _mm256_loadu_pd(&packed[(i - 1) * n + j - 1 + 20]);
			B_prev5 = _mm256_loadu_pd(&packed[(i - 1) * n + j + 20]);

			both_prev6 = _mm256_loadu_pd(&packed[(i - 2) * n + j - 1 + 24]);
			A_prev6 = _mm256_loadu_pd(&packed[(i - 1) * n + j - 1] + 24);
			B_prev6 = _mm256_loadu_pd(&packed[(i - 1) * n + j] + 24);

			both_prev7 = _mm256_loadu_pd(&packed[(i - 2) * n + j - 1 + 28]);
			A_prev7 = _mm256_loadu_pd(&packed[(i - 1) * n + j - 1 + 28]);
			B_prev7 = _mm256_loadu_pd(&packed[(i - 1) * n + j + 28]);

			both_prev = _mm256_add_pd(both_prev, match_score);
			both_prev1 = _mm256_add_pd(both_prev1, match_score1);
			both_prev2 = _mm256_add_pd(both_prev2, match_score2);
			both_prev3 = _mm256_add_pd(both_prev3, match_score3);
			both_prev4 = _mm256_add_pd(both_prev4, match_score4);
			both_prev5 = _mm256_add_pd(both_prev5, match_score5);
			both_prev6 = _mm256_add_pd(both_prev6, match_score6);
			both_prev7 = _mm256_add_pd(both_prev7, match_score7);

			best_score = _mm256_max_pd(both_prev, A_prev);
			best_score1 = _mm256_max_pd(both_prev1, A_prev1);
			best_score2 = _mm256_max_pd(both_prev2, A_prev2);
			best_score3 = _mm256_max_pd(both_prev3, A_prev3);
			best_score4 = _mm256_max_pd(both_prev4, A_prev4);
			best_score5 = _mm256_max_pd(both_prev5, A_prev5);
			best_score6 = _mm256_max_pd(both_prev6, A_prev6);
			best_score7 = _mm256_max_pd(both_prev7, A_prev7);

			best_score = _mm256_max_pd(best_score, B_prev);
			best_score1 = _mm256_max_pd(best_score1, B_prev1);
			best_score2 = _mm256_max_pd(best_score2, B_prev2);
			best_score3 = _mm256_max_pd(best_score3, B_prev3);
			best_score4 = _mm256_max_pd(best_score4, B_prev4);
			best_score5 = _mm256_max_pd(best_score5, B_prev5);
			best_score6 = _mm256_max_pd(best_score6, B_prev6);
			best_score7 = _mm256_max_pd(best_score7, B_prev7);

			best_score = _mm256_add_pd(best_score, GAP_SCORE);
			best_score1 = _mm256_add_pd(best_score1, GAP_SCORE);
			best_score2 = _mm256_add_pd(best_score2, GAP_SCORE);
			best_score3 = _mm256_add_pd(best_score3, GAP_SCORE);
			best_score4 = _mm256_add_pd(best_score4, GAP_SCORE);
			best_score5 = _mm256_add_pd(best_score5, GAP_SCORE);
			best_score6 = _mm256_add_pd(best_score6, GAP_SCORE);
			best_score7 = _mm256_add_pd(best_score7, GAP_SCORE);

			_mm256_storeu_pd(&packed[i * n + (j + 0)], best_score);
			_mm256_storeu_pd(&packed[i * n + (j + 0) + 4], best_score1);
			_mm256_storeu_pd(&packed[i * n + (j + 0) + 8], best_score2);
			_mm256_storeu_pd(&packed[i * n + (j + 0) + 12], best_score3);
			_mm256_storeu_pd(&packed[i * n + (j + 0) + 16], best_score4);
			_mm256_storeu_pd(&packed[i * n + (j + 0) + 20], best_score5);
			_mm256_storeu_pd(&packed[i * n + (j + 0) + 24], best_score6);
			_mm256_storeu_pd(&packed[i * n + (j + 0) + 28], best_score7);
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