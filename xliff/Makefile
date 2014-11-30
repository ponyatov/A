src.xliff: txt2xliff.exe src.txt txt2xliff.lex txt2xliff.bison
	flex txt2xliff.lex
	bison -d -o lex.h txt2xliff.bison
	bison    -o txt2xliff.bison.c txt2xliff.bison
	g++ -o txt2xliff.exe lex.yy.c txt2xliff.bison.c
	txt2xliff.exe < src.txt > src.xliff

#txt2xliff.exe: txt2xliff.lex txt2xliff.bison
#	flex txt2xliff.lex
#	bison -d -o lex.h txt2xliff.bison
#	bison    -o txt2xliff.bison.c txt2xliff.bison
#	g++ -o $@ lex.yy.c txt2xliff.bison.c
