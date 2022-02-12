%{
//Write a Lex program to count the no of characters in a file. //
#include<stdio.h>
int n=0,k=0;
%}

%%
" "  {k++;}
"\t" {k++;}
.    {n++;}
\n  {return 0;}
%%

int main()
{
 printf("Enter your string to be counted :- ");
 yylex();
 printf("\nYour input has total %d items and out of which %d are characters ",n+k,n);
 return 0;
}

int yywrap(){
return 1;
}

