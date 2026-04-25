%{
#include<stdio.h>
int v=0,c=0;
%}

%%
[aeiouAEIOU] {v++;}
[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z] {c++;}
. ;
\n ;
%%

int main(){
    FILE *fp;

    printf("Enter string: ");
    yylex();

    fp = fopen("output.txt","w");

    if(fp == NULL){
        printf("Unable to create file\n");
        return 1;
    }

    fprintf(fp,"Number of vowels are : %d\n",v);
    fprintf(fp,"Number of consonants are : %d\n",c);

    fclose(fp);

    printf("Result stored in output.txt\n");
    return 0;
}

int yywrap(){
    return 1;
}