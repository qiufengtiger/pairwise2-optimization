all: cmodule run

kernel_driver:
	gcc ./misc/kernel_driver.c -o ./misc/kernel_driver

cmodule: cpairwise2.c cpairwise2kernel.c
	python3 setup.py build
	find ./build -name \*.so -exec cp -pv '{}' '.' ';'
	rm -rf build

run:
	mkdir -p ./result
	python3 main.py
	cmp -s ./result/base_matrix.txt ./result/kernel_matrix.txt; \
    RETVAL=$$?; \
    if [ $$RETVAL -eq 0 ]; then \
            echo "SAME"; \
    else \
            echo "NOT SAME"; \
    fi

clean:
	rm -f *.o
	rm -f *.so
	rm -rf __pycache__
	rm -rf build
	rm -f ./pairwise_c
	rm -f ./misc/kernel_driver
	rm -rf ./result