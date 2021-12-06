# all:
# 	gcc -Wall -O3 kernel_driver.c -o kernel.x -mavx -mfma -mavx2 -std=c99 -Wno-nullability-completeness
# 	./kernel.x
	
# clean:
# 	rm -rf *.x *.o *~

CC = gcc
CFLAGS = -O3 -std=c99 -mavx -mfma -mavx2 -Wall -fopenmp
OBJS = naive.o packed_kernels.o nopack_kernels.o
DEPS = naive.h packed_kernels.h nopack_kernels.h


all: test_kernels.x
	./test_kernels.x 16384 32

test_kernels.x: $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) $(DEPS) kernel_driver.c -o test_kernels.x

naive.o: naive.c 
	$(CC) $(CFLAGS) -c naive.c

packed_kernels.o: packed_kernels.c naive.h
	$(CC) $(CFLAGS) -c packed_kernels.c

nopack_kernels.o: nopack_kernels.c naive.h
	$(CC) $(CFLAGS) -c nopack_kernels.c

clean:
	rm -rf *.x *.o *~