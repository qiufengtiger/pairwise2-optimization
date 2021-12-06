# Parallelizing and optimizing global pairwise alignment algorithm

## Platform
Most of the testing and evaluation are performed on the cmu.ece009 machine. But any ece clusters with Broadwell archetecture should yeild similar results. 

## Project Structure
- pairwise2: this folder contains the baseline code for pairwise2 algorithm. And the pairwise2 code after integrating our kernel into the baseline. By running these two versions of code, we check the correctness of the kernel.
-- cpairwise2.c: the fast module used to calcuate score matrix for pairwise2 
-- cpairwise2.py: original pairwise2 framwork to run the whole algorithm
-- cpairwise2kernel.c: the fast kernel we implementated to calcuate score matrix for pairwise2 
-- pairwise2kernel.py: pairwise2 framwork use our kernel to run the whole algorithm
-- main.py: driver to run the two versions of pairwise2 code
-- setup.py: set up the enviroment varables for pairwise2 
-- Makefile

- test_kernels: files in this folder separated the code for calculating the score matrix separately in order to compare the performance of the algorithm. It comtains the naive version code and all different versions of kernels we implemented.
-- kernel_driver.c: driver to test the performance of naive code with different kernels
-- naive.h, naive.c: naive method to simulate the score-matrix calculating code in base code pairwise2
-- nopack_kernels.h, nopack_kernels.c: SIMD kernels without packing in different size
-- packed_kernels.h, packed_kernels.c: SIMD kernels with packing in different size
-- Makefile

- test_kernels_init: similar to test_kernels but testing the initialization step. Since we don't see any improved performance using SIMD and OpenMP, we keep the naive implement for initialization step. 

- test_correctness.sh: shell script to check kernel correctness
- test_performance.sh: shell script to check kernel performance

## How to test
To test the correctness of kernel, run command `./test_correctness.sh` in root folder.
This command will run the baseline code and kernel code separately, and store the result in ./result. 
If result from kernel is identical with result from baseline, you will see 'KERNEL RESULT SAME AS THE BASE!'.

To test the performance of kernels, run command `./test_performance.sh` in root folder.
This command will run different kernels and test the performance.
To change the length of sequence, modify the length parameters in line 15 in `./test_kernels/Makefile`