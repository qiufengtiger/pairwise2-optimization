#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#define N 1009000


void rand_dna_seq(char *dest, size_t length) {
    char charset[] = "ACGT";

    while (length-- > 0) {
        size_t index = (double) rand() / RAND_MAX * (sizeof charset - 1);
        *dest++ = charset[index];
    }
    *dest = '\0';
}

void main () {
    int m = 16, n = 16;

    char str1[m+1];
    char str2[n+1];
    FILE *fp = fopen("../seq.txt", "w");
    fprintf(fp,"%d ",m+1); 
    fprintf(fp,"%d\n",n+1); 
    rand_dna_seq(str1, m);
    rand_dna_seq(str2, n);
    fputs(str1, fp);
    fputs("\n", fp);
    fputs(str2, fp);
    fputs("\n", fp);
    fclose(fp);
    return;
}