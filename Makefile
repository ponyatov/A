TEX = Azbuka.tex header.tex

Azbuka.pdf: $(TEX)
	pdflatex Azbuka.tex
	pdflatex Azbuka.tex
 