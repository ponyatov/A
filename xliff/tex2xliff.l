%option noyywrap

%{
#include <iostream>
#include <string>
using namespace std;
#define YYSTYPE string
#include "tex2xliff.tab.h"
%}

%%
\n{2,22}				{ yylval = ""; return SEP; }
\.\ +					{ yylval = "."; return SEP; }
\n						{ yylval = " "; return CHAR; } 
\\item					{ yylval = ""; return SEP; }
.						{ yylval = yytext; return CHAR; } 
%%
