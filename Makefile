poster:
	pandoc poster.md -o poster.tex
	pdflatex --shell-escape poster
	bibtex poster
	pdflatex --shell-escape poster
	pdflatex --shell-escape poster
	rm *.aux *.bbl *.blg *.log *.lua *.out *.nav *.snm *.toc *.vrb *.in poster.tex
	open poster.pdf

