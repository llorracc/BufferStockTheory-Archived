#!/bin/bash

for file in BufferStockTheory-NoAppendix BufferStockTheory BufferStockTheory-Appendix BufferStockTheorySlides; do
    
pdflatex -output-directory=LaTeX "$file"
bibtex   "LaTeX/$file"
pdflatex -output-directory=LaTeX "$file"
pdflatex -output-directory=LaTeX "$file"

done

for file in BufferStockTheory-NoAppendix BufferStockTheory BufferStockTheory-Appendix BufferStockTheory-Slides; do
    cp -p LaTeX/"$file.pdf" .
done


