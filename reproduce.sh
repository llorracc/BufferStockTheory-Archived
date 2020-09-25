#!/bin/bash
#sudo docker run -v "$PWD":/home/jovyan/work -it --rm econark/econ-ark-notebook:test4 bash -c "export TERM=dumb; ipython do_all.py"

for file in BufferStockTheory-NoAppendix BufferStockTheory-Appendix BufferStockTheory; do
    pdflatex "$file" --output-directory=LaTeX
    bibtex   LaTeX/"$file" 
    pdflatex "$file" --output-directory=LaTeX
    pdflatex "$file" --output-directory=LaTeX
    cp       LaTeX/"$file".pdf "$file".pdf
done

# Make self-contained tables and figures
for extra in Figures/All Tables/All Slides/BufferStockTheory-Slides; do
    pdflatex "$extra"
done
