TEX = Azbuka.tex header.tex
TEX += intro.tex

# KiCAD
TEX += kicad/kicad.tex

# Eclipse
TEX += eclipse/eclipse.tex

# LaTeX
TEX += latex/latex.tex latex/bib.tex

# Python
TEX += python/python.tex

# tools
TEX += tech/tools/tools.tex

# tech
TEX += tech/pcb/kipcb.tex

# Cortex-Mx
TEX += CortexM/cor.tex

# bibs
BIB = ../bib/eskd.bib ../bib/python.bib

autobuild: Azbuka.pdf 

tmp/work.pdf: work.tex $(TEX)
	pdflatex --output-directory=tmp work

Azbuka.pdf: $(TEX) $(BIB)
	pdflatex --output-directory=tmp Azbuka
	biber tmp/Azbuka
	pdflatex --output-directory=tmp Azbuka
	mv tmp/$@ $@

.PHONY: clean
clean:
	rm -f tmp/*
