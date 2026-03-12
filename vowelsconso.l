%{
#include<stdio.h>
int v=0,c=0;
%}

%%
[aeiouAEIOU] {v++;}
[^aeiouAEIOU] {c++;}
. ;
\n ;
%%

int main(){
	printf("Enter string: ");
	yylex();
	printf("Number of vowels are : %d\n",v);
	printf("Number of consonants are : %d\n",c);
}

int yywrap(){
	return 1;
}
