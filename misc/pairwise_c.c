#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#define _PRECISION 1000
#define rint(x) (int)((x)*_PRECISION+0.5)

double first_A_gap, first_B_gap;
double match = 1; 
double mismatch = 0;
double score;
double best_score = 0;
double local_max_score = 0;
double open_A = 0;
double open_B = 0;
double extend_A = 0;
double extend_B = 0;
int penalize_end_gaps_A = 1;
int penalize_end_gaps_B = 1;
int penalize_extend_when_opening = 0;
double *col_cache_score = NULL;
int score_only = 0;
int align_globally = 1;

char *sequenceA = NULL;
char *sequenceB = NULL;

double *score_matrix = NULL;
unsigned char *trace_matrix = NULL;

static double calc_affine_penalty(int length, double open, double extend,
    int penalize_extend_when_opening) {
    double penalty;

    if(length <= 0)
        return 0.0;
    penalty = open + extend * length;
    if(!penalize_extend_when_opening)
        penalty -= extend;
    return penalty;
}

static double _get_match_score(int i, int j, char *sequenceA, char *sequenceB, 
                               double match, double mismatch)
{
    double score = 0;
    score = (sequenceA[i] == sequenceB[j]) ? match : mismatch;
    return score;
}

void parse_sequence(char *path) {
	size_t len = 0;
    ssize_t read;

	FILE *fp = fopen(path, "r");
	if (fp == NULL) {
		exit(1);
	}
	getline(&sequenceA, &len, fp);
	getline(&sequenceB, &len, fp);
	// remove trailing newline
	sequenceA[strlen(sequenceA) - 1] = '\0';
	sequenceB[strlen(sequenceB) - 1] = '\0';
    fclose(fp);
}

void initialize_matrix() {
	int lenA = strlen(sequenceA);
	int lenB = strlen(sequenceB);

    int i;

	score_matrix = malloc((lenA+1)*(lenB+1)*sizeof(*score_matrix));
	for(i=0; i<(lenB+1); i++)
        score_matrix[i] = 0;
    for(i=0; i<(lenA+1)*(lenB+1); i += (lenB+1))
        score_matrix[i] = 0;

    trace_matrix = malloc((lenA+1)*(lenB+1)*sizeof(*trace_matrix));
    for(i=0; i<(lenB+1); i++)
        trace_matrix[i] = 0;
    for(i=0; i<(lenA+1)*(lenB+1); i += (lenB+1))
        trace_matrix[i] = 0;

    for(i=0; i<=lenA; i++) {
        if(penalize_end_gaps_B)
            score = calc_affine_penalty(i, open_B, extend_B,
                                        penalize_extend_when_opening);
        else
            score = 0;
        score_matrix[i*(lenB+1)] = score;
    }
    for(i=0; i<=lenB; i++) {
        if(penalize_end_gaps_A)
            score = calc_affine_penalty(i, open_A, extend_A,
                                        penalize_extend_when_opening);
        else
            score = 0;
        score_matrix[i] = score;
    }

    col_cache_score = malloc((lenB+1)*sizeof(*col_cache_score));
    memset((void *)col_cache_score, 0, (lenB+1)*sizeof(*col_cache_score));
    for(i=0; i<=lenB; i++) {
        col_cache_score[i] = calc_affine_penalty(i, (2*open_B), extend_B,
                             penalize_extend_when_opening);
    }
}

void fill_matrix() {
	int lenA = strlen(sequenceA);
	int lenB = strlen(sequenceB);

	int i;
    int row, col;

	for(row=1; row<=lenA; row++) {
        double row_cache_score = calc_affine_penalty(row, (2*open_A), extend_A,
                                 penalize_extend_when_opening);
        for(col=1; col<=lenB; col++) {
            double match_score, nogap_score;
            double row_open, row_extend, col_open, col_extend;
            int best_score_rint, row_score_rint, col_score_rint;
            unsigned char row_trace_score, col_trace_score, trace_score;

            /* Calculate the best score. */
            match_score = _get_match_score(row-1, col-1,
                                           sequenceA, sequenceB,
                                           match, mismatch);
            nogap_score = score_matrix[(row-1)*(lenB+1)+col-1] + match_score;

            if (!penalize_end_gaps_A && row==lenA) {
                row_open = score_matrix[(row)*(lenB+1)+col-1];
                row_extend = row_cache_score;
            }
            else {
                row_open = score_matrix[(row)*(lenB+1)+col-1] + first_A_gap;
                row_extend = row_cache_score + extend_A;
            }
            row_cache_score = (row_open > row_extend) ? row_open : row_extend;

            if (!penalize_end_gaps_B && col==lenB){
                col_open = score_matrix[(row-1)*(lenB+1)+col];
                col_extend = col_cache_score[col];
            }
            else {
                col_open = score_matrix[(row-1)*(lenB+1)+col] + first_B_gap;
                col_extend = col_cache_score[col] + extend_B;
            }
            col_cache_score[col] = (col_open > col_extend) ? col_open : col_extend;

            best_score = (row_cache_score > col_cache_score[col]) ? row_cache_score : col_cache_score[col];
            if(nogap_score > best_score)
                best_score = nogap_score;

            if (best_score > local_max_score)
                local_max_score = best_score;

            if(!align_globally && best_score < 0)
                score_matrix[row*(lenB+1)+col] = 0;
            else
                score_matrix[row*(lenB+1)+col] = best_score;

            if (!score_only) {
                row_score_rint = rint(row_cache_score);
                col_score_rint = rint(col_cache_score[col]);
                row_trace_score = 0;
                col_trace_score = 0;
                if (rint(row_open) == row_score_rint)
                    row_trace_score = row_trace_score|1;
                if (rint(row_extend) == row_score_rint)
                    row_trace_score = row_trace_score|8;
                if (rint(col_open) == col_score_rint)
                    col_trace_score = col_trace_score|4;
                if (rint(col_extend) == col_score_rint)
                    col_trace_score = col_trace_score|16;

                trace_score = 0;
                best_score_rint = rint(best_score);
                if (rint(nogap_score) == best_score_rint)
                    trace_score = trace_score|2;
                if (row_score_rint == best_score_rint)
                    trace_score += row_trace_score;
                if (col_score_rint == best_score_rint)
                    trace_score += col_trace_score;
                trace_matrix[row*(lenB+1)+col] = trace_score;
            }
        }
    }

    if (!align_globally)
        best_score = local_max_score;
}

void close() {
	free(score_matrix);
	free(trace_matrix);
}


int main() {
	parse_sequence("seq.txt");
	initialize_matrix();
	fill_matrix();
	printf("%f\n", best_score);
	close();
	printf("%s\n", sequenceA);
	printf("%s\n", sequenceB);
}

