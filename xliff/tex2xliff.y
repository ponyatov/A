
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
%token SEP

%%
BLOCK: CHARz | CHARz BLOCK ;
CHARz: 
	CHAR	{ cout<<$$; } |
	SEP		{
		cout<<$$<<"</source></trans-unit>\n";
		cout<<"<trans-unit><source>"; 
	} ; 
%%

int main () {
cout << "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n";
cout << "<xliff xmlns=\"urn:oasis:names:tc:xliff:document:1.2\" version=\"1.2\">\n";
cout << "<file>\n";
cout << "<body>\n<trans-unit><source>";
int yyp=yyparse();
cout << "</source></trans-unit>\n</body>\n";
cout << "</file>\n";
cout << "</xliff>\n";
return yyp; 
}
