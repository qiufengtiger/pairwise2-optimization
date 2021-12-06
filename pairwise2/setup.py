import sys
import os
from setuptools import setup
from setuptools import Extension

COMPILE_ARGS = ['-O3', '-std=c99', '-mavx', '-mavx2']
EXTENSIONS = [
    Extension("cpairwise2", sources=["cpairwise2.c"]),
    Extension("cpairwise2kernel", sources=["cpairwise2kernel.c"], extra_compile_args=COMPILE_ARGS),
]
setup(
    name="biopython",
    ext_modules=EXTENSIONS,
)
