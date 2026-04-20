/* Program to recognize a letter is simple or compound */


%{
#include<stdio.h>
int flag = 0;
%}

%%

and |
or |
but |
because |
if |
then |
nevertheless {flag=1;}
. ;
\n ;

%%


int main(){
	printf("Enter sentence: ");
	yylex();
	if(flag==0){
		printf("Simple sentence");
	}else{
		printf("Compound sentence");
	}
}

int yywrap(){
	return 1;
}






