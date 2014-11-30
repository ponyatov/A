
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
%}

%token CHAR
%token EOL
%token PAR
%token PREP
%token NUM

%%

TEXT: BLOCK | BLOCK TEXT ;
BLOCK: LINE ;
LINE: PARz | PREPz | NUM {cout<<"["<<$$<<"]";} | CHARz LINE ;
CHARz: CHAR {cout<<$$;} ;
PREPz: PREP {cout<<"("<<$$<<")\n";} ;
PARz: PAR {cout<<"\n\n";};

%%

int main () {
cout << "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n";
cout << "<xliff xmlns=\"urn:oasis:names:tc:xliff:document:1.2\" version=\"1.2\">\n";
cout << "<file>\n";
cout << "<body>\n";
	int yyp=yyparse();
cout << "</body>\n";
cout << "</file>\n";
cout << "</xliff>\n";
	return yyp; 
}
