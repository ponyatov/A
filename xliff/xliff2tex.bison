
%{
#include <iostream>
#include <string>
using namespace std;
#include <stdlib.h>
#define YYSTYPE string
extern int yylineno;
extern int yylex();
void yyerror(const char msg[]) { cerr << msg << " @ " << yylineno << endl; exit(-1); }
#define YYINITDEPTH 0x10000

int ON=0;

int CHARPOS=0;
#define LINEWIDTH 75
%}

%token CHAR
%token EOL
%token SPACE
%token URL

%token TB
%token TE

%%

TEXT: CHARz | CHARz TEXT ;
CHARz: 
	URL {cout<<"\\url{"<<$$<<"}";} |
	TB {ON=1;} | TE {ON=0; cout<<"\n";} |
	SPACE {if (ON) {cout<<$$; CHARPOS++; if (CHARPOS>LINEWIDTH) {CHARPOS=0; cout<<"\n";}}} |
	CHAR {if (ON) {cout<<$$; CHARPOS++;}} | 
	EOL {if (ON) {cout<<$$; CHARPOS=0; }}
	;

%%

int main () { return yyparse(); }
