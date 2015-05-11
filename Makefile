TEX = Azbuka.tex header.tex ../texheader/header.tex ../texheader/title.tex
PNG =
TEX += lstmk.sty lstrc.sty lstsyslinux.sty lstobjdump.sty
TEX += intro.tex

# Learn plans
TEX += learnplans/learnplans.tex

TXT = rex.py

# docmake
TEX += docmake/docmake.tex
TEX += docmake/azbuka.tex

# network
TEX += net/osi.tex

# USB
TEX += usb/usb.tex
TEX += usb/libusb.tex
TEX += usb/protocol.tex
TEX += usb/linux.tex

# devkit
TEX += devkit.tex

# gnu
TEX += gnu/gnu.tex
TEX += gnu/make.tex
TEX += gnu/elf.tex
TEX += gnu/as.tex
TEX += gnu/ld/ld.tex
TEX += gnu/ld/sections.tex
TEX += gnu/gcc.tex
TEX += gnu/fortran.tex

# Collis
TEX += bcollis/bcollis.tex bcollis/thanks.tex 
#TEX += bcollis/intro.tex
#TEX += bcollis/ch02.tex
#TEX += bcollis/2_2.tex bcollis/2_3.tex bcollis/2_4.tex
#TEX += bcollis/2_5.tex bcollis/2_6.tex bcollis/2_7.tex
#TEX += bcollis/2_8.tex
#TEX += bcollis/led1/led1.pdf bcollis/led2/led2.pdf
#TEX += bcollis/2_9.tex bcollis/2_10.tex
#TEX += bcollis/fet/fet.pdf
#TEX += bcollis/2_11.tex bcollis/2_12.tex
#TEX += bcollis/ldr/ldr.pdf bcollis/ldr/final.pdf
#TEX += bcollis/2_13.tex
#TEX += bcollis/vd/vd.pdf
#TEX += bcollis/2_14.tex bcollis/2_15.tex bcollis/2_16.tex
#TEX += bcollis/ch03.tex
#TEX += bcollis/3_1.tex bcollis/3_2.tex bcollis/3_3.tex
#TEX += bcollis/3_4.tex bcollis/3_5.tex bcollis/3_6.tex

# SPICE
TEX += spice/spice.tex
TEX += spice/RCfilter.pdf
TEX += spice/RCfilter.cir
TEX += spice/ACanaliz.pdf
TEX += spice/Rectifier.cir
TEX += spice/Rectifier.pdf
TEX += spice/rectifierplot.eps
TEX += spice/kicad.tex

# KiCAD
TEX += kicad/kicad.tex
TEX += kicad/kicadmenu.tex
TEX += kicad/about.tex
TEX += kicad/inst.tex
TEX += kicad/eeschema.tex
TEX += kicad/minilesson.tex
TEX += kicad/libs.tex
TEX += kicad/eenew.tex kicad/pcbnew.tex 
TEX += kicad/newproj.tex 
PNG += kicad/new_project.png
PNG += kicad/icon_cvpcb.png
TEX += kicad/gerbview.tex
TEX += kicad/march.tex
TEX += kicad/march.pdf
TEX += kicad/wings.tex
PNG += kicad/icon_kicad.png
PNG += kicad/icon_eeschema.png
PNG += kicad/icon_gerbview.png
PNG += kicad/icon_cvpcb.png
PNG += kicad/icon_modedit.png
PNG += kicad/icon_pcbcalculator.png
PNG += kicad/icon_pcbnew.png
PNG += kicad/icon_pagelayout.png

# FreeCAD
TEX += freecad/freecad.tex
PNG += logo/FreeCAD.png

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

# Stanki
TEX += stanki/stanki.tex
TEX += stanki/cccp.tex
TEX += stanki/1A616.tex
TEX += stanki/selfmade.tex

# Tabletop
TEX += tabletop/tabletop.tex

# tech
TEX += tech/pcb/kipcb.tex

# Cortex-Mx
TEX += cortex/cortex.tex
TEX += cortex/makers.tex
TEX += cortex/stm32.tex
TEX += cortex/lpc.tex
TEX += cortex/milandr.tex
TEX += cortex/maple/mini.tex
TEX += cortex/discovery/STM32DISCOVERY.tex
TEX += cortex/discovery/STM32F4DISCOVERY.tex
TEX += cortex/discovery/STM32F0DISCOVERY.tex

# FPGA
TEX += fpga/fpga.tex

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

# VCS
TEX += vcs/vcs.tex

# prog
TEX += prog/prog.tex
TEX += prog/lexer/lexer.tex
TEX += prog/sysdesign.tex
TEX += prog/ortho.tex
TEX += xliff/tex2xliff.l
TEX += xliff/tex2xliff.y
TEX += xliff/xliff2tex.l
TEX += xliff/xliff2tex.y
TEX += prog/llvm/llvm.tex
TEX += tmp/xliff.mk

# linux
TEX += linux/linux.tex
TEX += linux/syslinux.tex
TEX += linux/syslinux.cfg
TEX += linux/intro.tex
TEX += azlin/azlin.tex
#TEX += azlin/crox.py
TEX += linux/unknown.tex
TEX += linux/opengl.tex
TEX += linux/realtime.tex
TEX += linux/netboot.tex

TEX += azlin/mk/sdk/pascal.mk
TEX += azlin/mk/sdk/canadian.mk

# x86os
TEX += x86os/x86os.tex
TEX += x86os/mk/versions.mk
TEX += x86os/mk/cross.mk
TEX += x86os/mk/dirs.mk
TEX += x86os/mk/src.mk
TEX += x86os/cfg.mk

# SDL
TEX += linux/libsdl.tex
TEX += linux/sdl/lf01.tex linux/sdl/lf02.tex linux/sdl/lf03.tex linux/sdl/lf04.tex
TEX += linux/sdl/lf05.tex linux/sdl/lf06.tex linux/sdl/lf07.tex linux/sdl/lf08.tex
TEX += linux/sdl/lf09.tex linux/sdl/lf10.tex linux/sdl/lf11.tex linux/sdl/lf12.tex
TEX += linux/sdl/lf13.tex linux/sdl/lf14.tex linux/sdl/lf15.tex linux/sdl/lf16.tex
TEX += linux/sdl/lf17.tex linux/sdl/lf18.tex linux/sdl/lf19.tex linux/sdl/lf20.tex
TEX += linux/sdl/lf21.tex linux/sdl/lf22.tex linux/sdl/lf23.tex linux/sdl/lf24.tex
TEX += linux/sdl/lf25.tex linux/sdl/lf26.tex linux/sdl/lf27.tex linux/sdl/lf28.tex
TEX += linux/sdl/lf29.tex linux/sdl/lf30.tex linux/sdl/lf31.tex linux/sdl/lf32.tex
TEX += linux/sdl/lf33.tex linux/sdl/lf34.tex linux/sdl/lf35.tex linux/sdl/lf36.tex

# heap
TEX += heap/heap.tex 
TEX += heap/linparazit.tex 

LATEX = pdflatex --output-directory=tmp -halt-on-error
BIBER = biber

#buildmain: pdf

tmp/work.pdf: work.tex $(TEX) $(TXT)
	$(LATEX) work
#	$(BIBER) tmp/work
	makeindex tmp/work
	$(LATEX) work

%.png: %.svg
	inkscape $< --export-png=$@ --export-dpi=300
%.pdf: %.ps
	inkscape $< --export-pdf=$@ --export-area-drawing
%.pdf: %.svg
	inkscape $< --export-pdf=$@ --export-area-drawing
kicad/march.pdf: kicad/march.dot
	dot -Tpdf $< -o $@
	
.PHONY: files
files:
	python rex.py
	
.PHONY: pdf
pdf: Azbuka.pdf
Azbuka.pdf: $(TEX) $(BIB) $(TXT) $(PNG)
	make files
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

.PGONY: png
png: 
	make $(PNG)

.PHONY: clean
clean:
	rm -f tmp/work.* tmp/Azbuka.*

tmp/%.mk: %/Makefile
	cp $< $@
