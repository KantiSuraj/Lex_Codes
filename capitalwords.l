/* Identify capital words from string */

%{
#include<stdio.h>
%}

%%

[A-Z]+[ \t\n] {printf("%s\n",yytext);}
. ;

%%

int main(){
	printf("Enter string: ");
	yylex();
}

int yywrap(){
	return 1;
}
