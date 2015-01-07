
all: tex2xliff
	./tex2xliff < X.tex > xliff.xliff

clean:

tex2xliff: tex2xliff.l tex2xliff.y
	bison -d tex2xliff.y &&\
	flex -o tex2xliff.lex.c tex2xliff.l &&\
	g++ -o $@ $@.lex.c $@.tab.c
 
xliff2tex: xliff2tex.l xliff2tex.y
	bison -d xliff2tex.y &&\
	flex xliff2tex.l
