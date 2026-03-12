/* Lex program to recognise and display keywords,number and words */

%{
#include<stdio.h>
%}

%%
if |
else |
printf {printf("%s is keyword",yytext);}
[0-9]+ {printf("%s is number",yytext);}
[A-Za-z]+ {printf("%s is word",yytext);}
.|\n ;
%%

int main(){
	printf("Enter the string: ");
	yylex();
}

int yywrap(){
	return 1;
}
