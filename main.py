import sys
import os
import distutils.util

import pairwise2
import pairwise2simd

sequenceA = "ACCGTAC"
sequenceB = "ACGTCGA"

alignments = pairwise2.align.globalxx(sequenceA=sequenceA, sequenceB=sequenceB)
alignments_simd = pairwise2simd.align.globalxx(sequenceA=sequenceA, sequenceB=sequenceB)
print(alignments == alignments_simd)