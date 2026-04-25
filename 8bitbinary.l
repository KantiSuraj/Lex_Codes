/*Write a lex program to identify correctly an inputed 8 bit binary no */ 
%{
#include<stdio.h>
%}

%%
[01]{8}    { printf("Valid 8-bit binary number\n"); }
.*         { printf("Invalid input\n"); }
%%

int main(){
    printf("Enter input: ");
    yylex();
}

int yywrap(){
    return 1;
}