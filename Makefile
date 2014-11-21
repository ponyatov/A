TEX = Azbuka.tex header.tex bib.tex
TEX += intro.tex

# KiCAD
TEX += kicad/kicad.tex

# Eclipse
TEX += eclipse/eclipse.tex

# LaTeX
TEX += latex/latex.tex

# Python
TEX += python/python.tex

Azbuka.pdf: $(TEX)
	pdflatex Azbuka.tex
	pdflatex Azbuka.tex

.PHONY: clean
clean:
	rm -rf tmp *.aux *.toc *.log *.out
	