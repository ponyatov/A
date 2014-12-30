%option noyywrap
%option yylineno

%%
\n	{ printf("%.2x: <eol>\n",yylineno); }
%%

int main() {
	return yylex();
}
