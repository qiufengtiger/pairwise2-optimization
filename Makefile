c: pairwise_c.c
	gcc ./pairwise_c.c -o pairwise_c

cmodule: cpairwise2module.c
	python3 setup.py build
	find ./build -name \*.so -exec cp -pv '{}' '.' ';'
	rm -rf build

clean:
	rm -f *.o
	rm -f *.so
	rm -rf __pycache__
	rm -rf build
	rm -f ./pairwise_c