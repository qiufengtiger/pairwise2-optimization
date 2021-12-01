


void noSIMD_packed_kernel_4(
	int m,
	int n,
	double *restrict a,
	double *restrict b,
	double *restrict packed);

void packed_kernel_4(
	int m,
	int n,
	double *restrict a,
	double *restrict b,
	double *restrict packed);

void packed_kernel_16(
	int m,
	int n,
	double *restrict a,
	double *restrict b,
	double *restrict packed);

void packed_kernel_32(
	int m,
	int n,
	double *restrict a,
	double *restrict b,
	double *restrict packed);

void omp_packed_kernel_32(
	int m,
	int n,
	double *restrict a,
	double *restrict b,
	double *restrict packed);

void repack(int m, int n, double *restrict packed, double *restrict matrix);

void init_matrix_packed(int m, int n, double *packed);

