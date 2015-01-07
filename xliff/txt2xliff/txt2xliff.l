%option noyywrap

%{
#include <iostream>
#include <string>
using namespace std;
#define YYSTYPE string
#include "txt2xliff.tab.h"
%}

%%
\n{2,22}				{ yylval = ""; return SEP; }
\.\ +					{ yylval = yytext[0]; return SEP; }
\n						{ yylval = " "; return CHAR; }
e\.g\.					{ yylval = "e.g."; return CHAR; }
\\item					{ yylval = ""; return SEP; }
\ *\.{4,444}\ [0-9]+\n	{ yylval = " ..."; return SEP; }
.						{ yylval = yytext; return CHAR; } 
%%
