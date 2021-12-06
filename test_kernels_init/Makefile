CC = gcc
CFLAGS = -O3 -std=c99 -mavx -mfma -mavx2 -Wall -fopenmp

all:
	$(CC) $(CFLAGS) kernel_driver_init.c -o test_kernels_init.x
	./test_kernels_init.x 0 4096