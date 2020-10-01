#!/bin/bash

#for f in BufferStockTheory BufferStockTheory-NoAppendices; do
for f in BufferStockTheory; do
    pdflatex -output-format dvi "$f"
    bibtex   "$f"
    pdflatex -output-format dvi "$f"
    pdflatex -output-format dvi "$f"
done
