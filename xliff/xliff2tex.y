
%{
#include <iostream>
#include <string>
using namespace std;
#define YYSTYPE string
#define YYINITDEPTH 0x10000
void yyerror(const char *str) { cerr << "\nerror:" << str << "\n\n"; }
extern int yylex();

bool target=false;
int width=0;
%}

%token CHAR
%token TB
%token TE

%%
TEXT: CHARz | CHARz TEXT ;
CHARz: 
	CHAR	{ if (target) cout<<$$; } |
	TB		{ target=true; } |
	TE		{ target=false; cout<<"\n"; }
	;
%%

int main () {
int yyp=yyparse();
return yyp; 
}
