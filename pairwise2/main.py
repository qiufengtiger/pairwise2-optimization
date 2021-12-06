import sys
import os
import distutils.util
import random

import pairwise2
import pairwise2kernel

print_matrix = False
seq_length = 1024

def rand_dna_seq():
	elements = ['A', 'C', 'G', 'T']
	return ''.join(random.choices(elements, k=seq_length))

sequenceA = rand_dna_seq()
sequenceB = rand_dna_seq()

alignments = pairwise2.align.globalms(sequenceA=sequenceA, sequenceB=sequenceB, match=1, mismatch=-1, score_only=True, open=-1, extend=-1)
alignments_kernel = pairwise2kernel.align.globalms(sequenceA=sequenceA, sequenceB=sequenceB, match=1, mismatch=-1, score_only=True, open=-1, extend=-1)