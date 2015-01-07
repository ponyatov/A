X ?= 2_4

XLIFF = $(X).xliff

txt.txt: $(XLIFF) xliff2tex
	./xliff2tex < $< > $@

xliff2tex: xliff2tex.l xliff2tex.y
	bison -d xliff2tex.y
	flex xliff2tex.l
	g++ -o $@ lex.yy.c $@.tab.c
