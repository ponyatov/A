
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

.	{ yylval = yytext; return CHAR; }

%%
