:ag

bison -d -o lex.h txt2xliff.bison
bison    -o txt2xliff.bison.c txt2xliff.bison

flex txt2xliff.lex

g++ -o txt2xliff.exe lex.yy.c txt2xliff.bison.c

txt2xliff.exe < src.txt > src.xliff

pause
goto ag
