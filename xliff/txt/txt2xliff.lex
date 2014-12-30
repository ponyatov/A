/* %option main */
%option noyywrap

%%
\n	{ printf("CR"); }
%%

//int main() {
//	return yylex();
//}
