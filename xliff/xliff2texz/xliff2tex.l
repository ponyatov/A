%option yylineno
%option noyywrap

%{
#include <iostream>
#include <string>
using namespace std;
#define YYSTYPE string
#include "xliff2tex.tab.h"
%}

id [a-zA-Z][a-zA-Z0-9]*

%%
\<target\>			{ yylval = yytext; return B; }
\<\/target\>		{ yylval = yytext; return E; }
.|\n				{ yylval = yytext; return CHAR; }
%%
