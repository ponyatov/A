
%{
#include <iostream>
#include <string>
using namespace std;
#define YYSTYPE string
#define YYSTYPE string

#include <stdlib.h>
int CHARPOS=0;
#define LINEWIDTH 70

extern int yylineno;
extern int yylex();
void yyerror(const char msg[]) { cerr << msg << " @ " << yylineno << endl; exit(-1); }
#define YYINITDEPTH 0x10000

#define endmrk "</mrk>"
#define mtsymbol  "<mrk mtype=\"symbol\">"
#define mtprotected "<mrk mtype=\"protected\">"
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
	PAR {cout<<"\n</source></trans-unit>\n\n</section>\n\n<section>\n<trans-unit><source>\n"; CHARPOS=0; } | 
	PREP {cout<<$$<<"</source></trans-unit>\n\n<trans-unit><source>";} | 
	NUM {cout<<mtsymbol<<$$<<endmrk; CHARPOS+=$$.length()+sizeof(mtsymbol)+sizeof(endmrk); } | 
	URL {cout<<mtprotected<<$$<<endmrk; CHARPOS+=$$.length()+sizeof(mtprotected)+sizeof(endmrk); } | 
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
