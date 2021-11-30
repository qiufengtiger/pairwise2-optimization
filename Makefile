all:
	gcc -Wall -O3 ./misc/kernel_driver.c -o kernel.x -mavx -mfma -mavx2 -std=c99 -Wno-nullability-completeness
	./kernel.x
	
clean:
	rm -rf *.x *.o *~