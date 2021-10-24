import sys
import os
import distutils.util

import pairwise2

alignments = pairwise2.align.globalxx(sequenceA="ACCGT", sequenceB="ACG")
print(alignments)