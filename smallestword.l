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
	FILE = *fp
	fp = fopen("output.txt","w")
	printf("Enter text: ");

	yylex();
	if(fp == NULL){
		printf("No shortest word found");

	}
	else{
		if(min == 9999){
			fprint(fp,"No shortest word found")
		}
		else{
			fprint(fp,"smallest word: %s\nLength  : %d",smallest,min);
		}
		fclose(fp);
	}
	if(min == 99999){
		printf("No shortest word found ");
	}else{
		printf("Smallest word: %s\nLength : %d",smallest,min);
	}
}

int yywrap(){
	return 1;
}


/*
# length of entire input string including newline
%%
.      { count++; }
\n     { count++; }
%%

#length of entire input string excluding newline
%%
. { count++; }
\n { return 0; }
%%
*/