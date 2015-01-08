%option noyywrap

%{
#include <iostream>
#include <string>
using namespace std;
#define YYSTYPE string
#include "xliff2tex.tab.h"
%}

%%
\<target\>		{ yylval = yytext; return TB; }
\<\/target\>	{ yylval = yytext; return TE; }
.|\n			{ yylval = yytext; return CHAR; } 
%%
