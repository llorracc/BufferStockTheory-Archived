#!/bin/bash

for file in BufferStockTheory-NoAppendix BufferStockTheory BufferStockTheorySlides; do
    
pdflatex -output-directory=LaTeX "$file"
bibtex   "LaTeX/$file"
pdflatex -output-directory=LaTeX "$file"
pdflatex -output-directory=LaTeX "$file"

done

for file in BufferStockTheory-NoAppendix BufferStockTheory BufferStockTheory-Slides; do
    cp -p LaTeX/"$file.pdf" .
done


