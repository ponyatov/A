
all: xliff.xliff Y.tex

xliff.xliff: X.tex tex2xliff
	./tex2xliff < $< > $@
Y.tex: xliff.xliff xliff2tex  
	./xliff2tex < $< > $@

clean:
	rm -f tex2xliff xliff2tex
	rm -f xliff.xliff Y.tex

tex2xliff: tex2xliff.l tex2xliff.y
	bison -d $@.y &&\
	flex -o $@.lex.c $@.l &&\
	g++ -o $@ $@.lex.c $@.tab.c
 
xliff2tex: xliff2tex.l xliff2tex.y
	bison -d $@.y &&\
	flex -o $@.lex.c $@.l &&\
	g++ -o $@ $@.lex.c $@.tab.c
