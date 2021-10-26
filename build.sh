#!/bin/sh

gcc -Wno-unused-result -Wsign-compare -Wunreachable-code -fno-common -dynamic -DNDEBUG -g -fwrapv -O3 -Wall -arch x86_64 -g -I/Library/Frameworks/Python.framework/Versions/3.8/include/python3.8 -c ./cpairwise2module.c -o ./cpairwise2module.o

gcc -bundle -undefined dynamic_lookup -arch x86_64 -g ./cpairwise2module.o -o ./cpairwise2.cpython-38-darwin.so