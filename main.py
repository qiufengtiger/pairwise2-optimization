import sys
import os
import distutils.util

import pairwise2
import pairwise2simd

sequenceA = "ACCGTAC"
sequenceB = "ACGTCGA"

# alignments = pairwise2.align.globalxx(sequenceA=sequenceA, sequenceB=sequenceB)
# alignments_simd = pairwise2simd.align.globalxx(sequenceA=sequenceA, sequenceB=sequenceB)
alignments = pairwise2.align.globalmx(sequenceA=sequenceA, sequenceB=sequenceB, match=1, mismatch=-1, score_only=True)
alignments_simd = pairwise2simd.align.globalmx(sequenceA=sequenceA, sequenceB=sequenceB, match=1, mismatch=-1, score_only=True)
print(alignments == alignments_simd)
print(alignments)
print(alignments_simd)