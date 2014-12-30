
all: xliff.xliff

xliff.xliff: txt.txt txt2xliff 
	./txt2xliff < $< > $@

%: %.lex
	flex -o $@.c $< && g++ -o $@ $@.c
