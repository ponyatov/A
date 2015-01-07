
%{
#include <iostream>
#include <string>
using namespace std;
#define YYSTYPE string
#define YYINITDEPTH 0x10000
void yyerror(const char *str) { cerr << "\nerror:" << str << "\n\n"; }
extern int yylex();
%}

%token CHAR

%%
BLOCK: CHARz | CHARz BLOCK ;
CHARz: 
	CHAR	{ cout<<$$; } ;
%%

int main () {
int yyp=yyparse();
return yyp; 
}
