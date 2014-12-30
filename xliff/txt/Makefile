
all: txt2xliff

%: %.lex
	flex -o $@.c $< && g++ -o $@ $@.c 
	 