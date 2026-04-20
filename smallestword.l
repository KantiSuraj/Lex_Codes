%{
#include<stdio.h>
char smallest[1000];
int min=99999;
%}

%%
[a-zA-Z]+ {
	int len = yyleng;
	
	if(len<min){
		min = len;
		strcpy(smallest,yytext);
	}
}

.|\n ;
%%

int main(){
	printf("Enter text: ");
	yylex();
	
	if(min == 99999){
		printf("No shortest word found ");
	}else{
		printf("Smallest word: %s\nLength : %d",smallest,min);
	}
}

int yywrap(){
	return 1;
}
