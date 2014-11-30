
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

int CHARPOS=0;
#define LINEWIDTH 75
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
BLOCK: LINE ;
LINE: 
	PAR {cout<<"\n</source></trans-unit>\n</section>\n\n<section>\n<trans-unit><source>\n"; CHARPOS=0; } | 
	PREP {cout<<$$<<"</source></trans-unit>\n<trans-unit><source>";} | 
	NUM {cout<<"<mrk mtype=\"symbol\">"<<$$<<"</mrk>";} | 
	URL {cout<<"<mrk mtype=\"protected\">"<<$$<<"</mrk>"; CHARPOS+=$$.length(); } | 
	CHARz LINE ;
CHARz: 
	CHAR {cout<<$$; CHARPOS++; } | 
	SPACE {cout<<$$; CHARPOS++; if (CHARPOS>LINEWIDTH) {CHARPOS=0; cout<<"\n";} } ;

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
