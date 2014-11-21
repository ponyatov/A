TEX = Azbuka.tex header.tex
TEX += intro.tex

# KiCAD
TEX += kicad/kicad.tex

# Eclipse
TEX += eclipse/eclipse.tex

# LaTeX
TEX += latex/latex.tex

Azbuka.pdf: $(TEX)
	pdflatex Azbuka.tex
	pdflatex Azbuka.tex
