import os
import sys


lang = sys.argv[1]
files = [alignment for alignment in os.listdir(f'/home/luca/align-gosact/aligned/{lang}') if os.path.isfile(f'/home/luca/align-gosact/aligned/{lang}/{alignment}')]

empty_alignments = []
for f in files:
    with open(f'/home/luca/align-gosact/aligned/{lang}/{f}') as file:
        data = file.read()
    
    if not data:
        empty_alignments.append(f)

print(bool(empty_alignments))

with open(f'/home/luca/align-gosact/missing_alignment_{lang}.txt', 'w') as file:
    file.write(f'{" ".join(empty_alignments)}')
