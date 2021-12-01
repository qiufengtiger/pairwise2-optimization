all:
	$(info Compiling...)
	gcc -Wall -O3 kernel_driver.c -o kernel.x -mavx -mavx2 -std=c99 -Wno-nullability-completeness -fopenmp
	$(info Running...)
	./kernel.x
	
clean:
	rm -rf *.x *.o *~
