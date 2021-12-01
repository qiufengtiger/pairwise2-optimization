import sys
import os
from setuptools import setup
from setuptools import Extension
EXTENSIONS = [
    Extension("cpairwise2", ["cpairwise2.c"]),
    Extension("cpairwise2simd", ["cpairwise2simd.c"]),
]
# COMPILE_ARGS = ["-Wno-unused-parameter", "-Wunused-function", "-Wunused-but-set-variable"]
setup(
    name="biopython",
    ext_modules=EXTENSIONS,
    # extra_compile_args=COMPILE_ARGS,
)
