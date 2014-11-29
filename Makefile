TEX = Azbuka.tex header.tex authoring.tex title.tex
TEX += intro.tex

# Collid
TEX += bcollis/bcollis.tex
TEX += bcollis/thanks.tex
TEX += bcollis/intro.tex
TEX += bcollis/ch02.tex

# KiCAD
TEX += kicad/kicad.tex

# FreeCAD
TEX += freecad/freecad.tex logo/FreeCAD.png

# IDE
TEX += ide/ide.tex
TEX += ide/eclipse.tex
TEX += ide/codeblocks.tex
TEX += ide/vim.tex

# LaTeX
TEX += latex/latex.tex latex/bib.tex
TEX += latex/GLE.tex

# Python
TEX += python/python.tex

# tools
TEX += tech/tools/tools.tex
TEX += tech/tools/electro.tex
TEX += tech/tools/handtools.tex
TEX += tech/tools/solder.tex

# tech
TEX += tech/pcb/kipcb.tex

# Cortex-Mx
TEX += CortexM/cor.tex

# bibs
BIB  = ../bib/python.bib
BIB += ../bib/eskd.bib
BIB += ../bib/electronics.bib
BIB += ../bib/latex.bib
BIB += ../bib/sat.bib

# heap
TEX += heap/heap.tex 

LATEX = pdflatex --output-directory=tmp -halt-on-error
BIBER = biber

#buildmain: pdf

tmp/work.pdf: work.tex $(TEX)
	$(LATEX) work

.PHONY: pdf
pdf: Azbuka.pdf
Azbuka.pdf: $(TEX) $(BIB)
	$(LATEX) Azbuka
	$(BIBER) tmp/Azbuka
	$(LATEX) Azbuka
	mv tmp/$@ $@

.PHONY: clean
clean:
	rm -f tmp/work.* tmp/Azbuka.*
