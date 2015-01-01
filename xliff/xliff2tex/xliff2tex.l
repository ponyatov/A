%option noyywrap

%{
#include <iostream>
#include <string>
using namespace std;
#define YYSTYPE string
#include "xliff2tex.tab.h"
%}

%%
\<source\>			{}
.					{ yylval = yytext; return CHAR; } 
%%
