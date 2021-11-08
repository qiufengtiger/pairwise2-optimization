#include <stdio.h>
#include <stdlib.h>
#include <math.h>

void main () {
    // seq_A = _mm256_set_pd(a[row1 - 1], a[row2 - 1], a[row3 - 1], a[row4 - 1]);
    // matrix[row1 * n + col1] = result[3];
	// 		matrix[row2 * n + col2] = result[2];
	// 		matrix[row3 * n + col3] = result[1];
	// 		matrix[row4 * n + col4] = result[0];
    for (int i = 0; i  < 32; i+=4) {
        printf("matrix[row%d * n + col%d] = result[%d];\n", i, i, i+3);
        printf("matrix[row%d * n + col%d] = result[%d];\n", i+1, i+1, i+2);
        printf("matrix[row%d * n + col%d] = result[%d];\n", i+2, i+2, i+1);
        printf("matrix[row%d * n + col%d] = result[%d];\n", i+3, i+3, i);
    }
}