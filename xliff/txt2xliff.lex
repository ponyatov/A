%option yylineno
%option noyywrap

%{
#include <iostream>
#include <string>
using namespace std;
#define YYSTYPE string
#include "lex.h"
%}

%%

([a-z0-9]+\.)+(com)	{ yylval = yytext; return CHAR; }
[0-9]+(\.[0-9]+)*	{ yylval = yytext; return NUM; }
[\.\?]				{ yylval = yytext; return PREP; }

\n\n+	{ yylval = yytext; return PAR; }
\n		{ yylval = " "; return CHAR; }
.		{ yylval = yytext; return CHAR; }

%%
