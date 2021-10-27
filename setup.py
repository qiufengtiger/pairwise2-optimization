import sys
import os
from setuptools import setup
from setuptools import Extension
EXTENSIONS = [
    Extension("cpairwise2", ["cpairwise2module.c"]),
]
setup(
    name="biopython",
    ext_modules=EXTENSIONS,
)
