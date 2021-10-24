COMPILE_FLAGS=-Wno-unused-result -Wsign-compare -Wunreachable-code -fno-common -dynamic -DNDEBUG -g -fwrapv -O3 -Wall -arch x86_64
PYTHON_LIB=-g -I/usr/include/python3.6m

all: cmodule

cmodule: cpairwise2module.c
	gcc $(COMPILE_FLAGS) $(PYTHON_LIB) -c ./cpairwise2module.c -o ./cpairwise2module.o
	gcc -bundle -undefined dynamic_lookup -arch x86_64 -g ./cpairwise2module.o -o ./cpairwise2.so

clean:
	rm -f *.o
	rm -f *.so
	rm -rf __pycache__