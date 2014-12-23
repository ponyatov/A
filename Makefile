TEX = Azbuka.tex header.tex authoring.tex title.tex
TEX += lstmk.sty lstrc.sty lstsyslinux.sty
TEX += intro.tex

TXT = rex.py

# Collis
TEX += bcollis/bcollis.tex
TEX += bcollis/thanks.tex
TEX += bcollis/intro.tex
TEX += bcollis/ch02.tex
TEX += bcollis/led1/led1.pdf

# KiCAD
TEX += kicad/kicad.tex
TEX += kicad/about.tex
TEX += kicad/inst.tex
TEX += kicad/eeschema.tex
TEX += kicad/minilesson.tex
TEX += kicad/libs.tex
TEX += kicad/pcbnew.tex
TEX += kicad/gerbview.tex
TEX += kicad/spice.tex
TEX += kicad/wings.tex
TEX += kicad/icon_kicad.png
TEX += kicad/icon_eeschema.png
TEX += kicad/icon_gerbview.png
TEX += kicad/icon_cvpcb.png
TEX += kicad/icon_modedit.png
TEX += kicad/icon_pcbcalculator.png
TEX += kicad/icon_pcbnew.png
TEX += kicad/icon_pagelayout.png

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
BIB += ../bib/math.bib
BIB += ../bib/sysdesign.bib

# math
TEX += math/math.tex

# prog
TEX += prog/prog.tex
TEX += prog/lexer/lexer.tex
TEX += prog/sysdesign.tex
TEX += prog/ortho.tex

# linux
TEX += linux/linux.tex
TEX += linux/syslinux.tex
TEX += linux/syslinux.cfg
TEX += linux/intro.tex
TEX += azlin/azlin.tex
TEX += linux/libsdl.tex
TEX += linux/opengl.tex
TEX += linux/realtime.tex
TEX += linux/netboot.tex

# heap
TEX += heap/heap.tex 

LATEX = pdflatex --output-directory=tmp -halt-on-error
BIBER = biber

#buildmain: pdf

tmp/work.pdf: work.tex $(TEX) $(TXT)
	python rex.py
	$(LATEX) work
#	$(LATEX) work
#	makeindex tmp/work

%.png: %.svg
	inkscape $< --export-png=$@ --export-dpi=300
%.pdf: %.svg
	inkscape $< --export-pdf=$@ --export-area-drawing

.PHONY: pdf
pdf: Azbuka.pdf
Azbuka.pdf: $(TEX) $(BIB) $(TXT)
	$(LATEX) Azbuka
	makeindex tmp/Azbuka
	$(LATEX) Azbuka
#	mv tmp/$@ $@
	ghostscript \
		-sDEVICE=pdfwrite \
		-dMaxSubsetPct=100 \
		-dPDFSETTINGS=/ebook \
		-dNOPAUSE -dBATCH \
		-sOutputFile=Azbuka.pdf tmp/Azbuka.pdf
#	$(BIBER) tmp/Azbuka

.PHONY: clean
clean:
	rm -f tmp/work.* tmp/Azbuka.*
