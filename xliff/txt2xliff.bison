
%{
#include <iostream>
#include <string>
using namespace std;
#define YYSTYPE string
#define YYSTYPE string

#include <stdlib.h>

extern int yylineno;
extern int yylex();
void yyerror(const char msg[]) { cerr << msg << " @ " << yylineno << endl; exit(-1); }
#define YYINITDEPTH 0x10000
%}

%token CHAR
%token SPACE
%token EOL
%token PAR
%token PREP
%token NUM
%token URL

%%

TEXT: BLOCK | BLOCK TEXT ;
BLOCK: CHAR { cout<<$$; } ;

%%

int main () {
	int yyp=yyparse();
	return yyp; 
}
