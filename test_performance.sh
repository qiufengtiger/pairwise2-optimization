gcc -c generate.c -o generate.o
gcc generate.o -o generate
./generate 16384 32
rm generate
rm generate.o
cd test_kernels
make
make clean
cd ..
