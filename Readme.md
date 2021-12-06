# Parallelizing and optimizing global pairwise alignment algorithms
## Project Structure


## How to test
To test the correctness of kernel, run command `./test_correctness.sh` in root folder.
This command will run the baseline code and kernel code separately, and store the result in ./result. 
If result from kernel is identical with result from baseline, you will see 'KERNEL RESULT SAME AS THE BASE!'.

To test the performance of kernels, run command `./test_performance.sh` in root folder.
This command will run different kernels and test the performance.