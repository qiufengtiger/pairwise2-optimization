

void kernel1(
	int m,
	int n,
	double *restrict a,
	double *restrict b,
	double *restrict matrix);


void SIMDkernel4(
	int m,
	int n,
	double *restrict a,
	double *restrict b,
	double *restrict matrix);

void SIMDkernel8(
	int m,
	int n,
	double *restrict a,
	double *restrict b,
	double *restrict matrix);

void SIMDkernel16(
	int m,
	int n,
	double *restrict a,
	double *restrict b,
	double *restrict matrix);

void SIMDkernel32(
	int m,
	int n,
	double *restrict a,
	double *restrict b,
	double *restrict matrix);


