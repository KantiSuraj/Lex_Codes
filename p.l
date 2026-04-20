%{
#include<stdio.h>
int c=0;
%}

%%
[a-zA-z\t] {c++;}
.|\n ;
%%

int yywrap(){
	return 1;
}

int main(){
	printf("Enter text: ");
	yylex();
	
	printf("Length of input text: %d",c);
}

