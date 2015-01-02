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
\<\?[^\?]+\?\>		{ yylval = yytext; return XML_HEAD; }
\<\/{id}\>			{ yylval = yytext; return TAG_CLOSE; }
\<[^\>]+\>			{ yylval = yytext; return TAG_OPEN; }
.					{ yylval = yytext; return CHAR; } 
%%
