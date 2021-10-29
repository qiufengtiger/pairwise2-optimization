for (col = 1; col <= lenB; col ++) {
        for (row = 1; row <= lenA; row ++) {
            row_cache_score = calc_affine_penalty(row, (2*open_A), extend_A, 
                                                         penalize_extend_when_opening);
            col_cache_score = calc_affine_penalty(col, (2*open_B), extend_B,
                             penalize_extend_when_opening);
            match_score = _get_match_score(py_sequenceA, py_sequenceB,
                                                   py_match_fn, row-1, col-1,
                                                   sequenceA, sequenceB,
                                                   use_sequence_cstring,
                                                   match, mismatch,
                                                   use_match_mismatch_scores);
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
                col_extend = col_cache_score;
            }
            else {
                col_open = score_matrix[(row-1)*(lenB+1)+col] + first_B_gap;
                col_extend = col_cache_score + extend_B;
            }
            col_cache_score = (col_open > col_extend) ? col_open : col_extend;
            best_score = (row_cache_score > col_cache_score) ? row_cache_score : col_cache_score;
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
                col_score_rint = rint(col_cache_score);
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