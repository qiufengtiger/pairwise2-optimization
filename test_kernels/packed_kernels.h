

void SIMDkernel4packed(
	int m,
	int n,
	double *restrict a,
	double *restrict b,
	double *restrict packed);

void repack(int m, int n, double *restrict packed, double *restrict matrix);

void init_matrix_packed(int m, int n, double *packed);

