/* Write a  program that copies entire c code and replaces each instace of the keyword float with double*/

%{
    #include<stdio.h>

%}
%%
    float                      { fprintf(yyout,"double"); }
    [a-zA-Z_][a-zA-Z0-9_]*     { fprintf(yyout,"%s",yytext); }
    .|\n                       { fprintf(yyout,"%s",yytext); }
%%

int yywrap(){
    return 1;
}
int main(int argc,char* argv[]){
    yyin = fopen(argv[1],"r");
    yyout = fopen(argv[2],"w");

    yylex();
    fclose(yyin);
    fclose(yyout);
}


/*
Inside one bracket [ ... ]

Means:

Match one character chosen from this set/range.

Multiple bracket groups in sequence
[...][...]

Means:

Match first one character from first set, then next one character from second set.

So concatenation of positions.
*/