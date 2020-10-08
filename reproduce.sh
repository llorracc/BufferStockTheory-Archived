cd Code/Python
ipython BufferStockTheory-Problems-and-Solutions-Source.ipynb

# Compile LaTeX files
cd ../../
for file in BufferStockTheory-NoAppendix BufferStockTheory BufferStockTheory-Slides; do
    pdflatex -output-directory=LaTeX "$file.tex"
    pdflatex -output-directory=LaTeX "$file.tex"
    bibtex LaTeX/"$file"
    pdflatex -output-directory=LaTeX "$file.tex"
done

# Remove LaTeX junk files

for file in BufferStockTheory-NoAppendix BufferStockTheory BufferStockTheory-Slides; do
    rm "$file.aux" "$file.bbl" "$file.blg" "$file.dep" "$file.log" "$file.out"
done
