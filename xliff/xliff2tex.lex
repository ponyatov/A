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

\n	{}

([a-z0-9]+\.)+([a-z]+)	{ yylval = yytext; return URL; }

\<(\/mrk|mrk[^\>]+)\>	{}

\<target\>		{ yylval = yytext; return TB; }
\<\/target\>	{ yylval = yytext; return TE; }

\ 		{ yylval = yytext; return SPACE; }
.		{ yylval = yytext; return CHAR; }

%%
