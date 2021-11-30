import sys
import os
import distutils.util

import pairwise2
import pairwise2simd


f = open("../seq.txt")
f.readline()
sequenceA = f.readline()
sequenceB = f.readline()

print(sequenceA)
print(sequenceB)

# alignments = pairwise2.align.globalxx(sequenceA=sequenceA, sequenceB=sequenceB)
# alignments_simd = pairwise2simd.align.globalxx(sequenceA=sequenceA, sequenceB=sequenceB)
alignments = pairwise2.align.globalms(sequenceA=sequenceA, sequenceB=sequenceB, match=1, mismatch=-1, score_only=True, open=-1, extend=0)
alignments_simd = pairwise2simd.align.globalms(sequenceA=sequenceA, sequenceB=sequenceB, match=1, mismatch=-1, score_only=True, open=-1, extend=0)
print(alignments == alignments_simd)
print(alignments)
print(alignments_simd)