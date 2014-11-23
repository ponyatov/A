TEX = Azbuka.tex header.tex
TEX += intro.tex

# KiCAD
TEX += kicad/kicad.tex

# IDE
TEX += ide/ide.tex
TEX += ide/eclipse.tex
TEX += ide/codeblocks.tex
TEX += ide/vim.tex

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

# heap
TEX += heap/heap.tex 

LATEX = pdflatex --output-directory=tmp -halt-on-error
BIBER = biber

#buildmain: Azbuka.pdf 

tmp/work.pdf: work.tex $(TEX)
	$(LATEX) work

Azbuka.pdf: $(TEX) $(BIB)
	$(LATEX) Azbuka
	$(BIBER) tmp/Azbuka
	$(LATEX) Azbuka
	mv tmp/$@ $@

.PHONY: clean
clean:
	rm -f tmp/*
