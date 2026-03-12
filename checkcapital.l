/*Identif words starting with capital letters*/

%{
#include<stdio.h>
%}

%%
[A-Z][A-Za-z]* {printf("%s starts with capital\n",yytext);}
. ;
\n ;
%%

int main(){
	printf("Enter text : ");
	yylex();
}

int yywrap(){
	return 1;
}
