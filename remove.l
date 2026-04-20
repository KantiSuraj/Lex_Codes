%{
#include<stdio.h>
%}

%%
[ \t\n]+ {fprintf(yyout," ");}
. {fprintf(yyout,"%s",yytext);}

%%

int yywrap(){
	return 1;
}

int main(int argc,char *argv[]){
	yyin = fopen(argv[1],"r");
	
	yyout = fopen(argv[2],"w");
	
	yylex();
	
	fclose(yyin);
	fclose(yyout);
}
