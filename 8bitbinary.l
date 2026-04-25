/*Write a lex program to identify correctly an inputed 8 bit binary no */ 
%{
#include<stdio.h>
%}

%%
[01]{8}    { printf("Valid 8-bit binary number : %s \n",yytext); }
.*         { printf("Invalid input : %s \n" ,yytext); }
%%

int main(){
    printf("Enter input: ");
    yylex();
}

int yywrap(){
    return 1;
}