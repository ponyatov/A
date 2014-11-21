TEX = Azbuka.tex header.tex
TEX += intro.tex

Azbuka.pdf: $(TEX)
	pdflatex Azbuka.tex
	pdflatex Azbuka.tex
 