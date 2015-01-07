%option noyywrap

%{
#include <iostream>
#include <string>
using namespace std;
#define YYSTYPE string
#include "xliff2tex.tab.h"
%}

%%
.|\n						{ yylval = yytext; return CHAR; } 
%%
