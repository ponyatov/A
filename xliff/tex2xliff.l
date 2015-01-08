%option noyywrap

%{
#include <iostream>
#include <string>
using namespace std;
#define YYSTYPE string
#include "tex2xliff.tab.h"
%}

%%
([a-z0-9]+\.)+(com|nz)	{ yylval = yytext; return URL; }

\.[\n\ ]+		{ yylval = "."; return SEP; }
\&				{ yylval = "&amp;"; return CHAR; }
\n{2,22}		{ yylval = ""; return SEP; }
\n				{ yylval = " "; return CHAR; } 
\\item			{ yylval = ""; return SEP; }
.				{ yylval = yytext; return CHAR; } 
%%
