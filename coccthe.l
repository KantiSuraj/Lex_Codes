%{
#include<stdio.h>
#include<string.h>
int count=0;
%}

%%
[a-zA-Z]+ {
	if(strcmp(yytext,"the") == 0){
		count++;
	}
}
%%

int yywrap(){
	return 1;
}

int main(){
	printf("Enter string: ");
	yylex();
	
	printf("Occurance of the: %d",count);
}
