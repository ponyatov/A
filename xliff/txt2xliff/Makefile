xliff.xliff: txt.txt txt2xliff
	./txt2xliff < $< > $@

txt2xliff: txt2xliff.l txt2xliff.y
	bison -d txt2xliff.y
	bison    txt2xliff.y
	flex txt2xliff.l
	g++ -o $@ lex.yy.c $@.tab.c
