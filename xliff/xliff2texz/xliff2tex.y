
%{
#include <iostream>
#include <string>
using namespace std;
#define YYSTYPE string
#define YYINITDEPTH 0x10000
void yyerror(const char *str) { cerr << "\nerror: " << str << "\n\n"; }
extern int yylex();
bool W=false;
%}

%token B E CHAR

%%
TEX: ITEM |ITEM TEX ;
ITEM: 
	CHAR {if (W) cout<<$$;}
	| B {W=true;}
	| E {W=false; cout<<"\n\n";}
	;
%%

int main () { return yyparse(); }
