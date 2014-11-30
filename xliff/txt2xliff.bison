
%{
#include <iostream>
#include <string>
using namespace std;
#include <stdlib.h>
#define YYSTYPE string
extern int yylineno;
extern int yylex();
void yyerror(const char msg[]) { cerr << msg << " @ " << yylineno << endl; exit(-1); }
%}

%token CHAR

%%

TEXT: CHAR | CHAR TEXT ;

%%

int main()
	{
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
