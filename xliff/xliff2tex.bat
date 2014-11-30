:ag

bison -d -o lex.h xliff2tex.bison
bison    -o xliff2tex.bison.c xliff2tex.bison

flex xliff2tex.lex

g++ -o xliff2tex.exe lex.yy.c xliff2tex.bison.c

xliff2tex.exe < ch_2_1_down.xliff > target.tex

pause
goto ag
