gcc -c generate.c -o generate.o
gcc generate.o -o generate
./generate 32 32
rm generate
rm generate.o
cd test_kernels
make
make clean
cd ../pairwise2
make
python3 main.py
make clean
cd ..
diff kernel_res.txt base_res.txt