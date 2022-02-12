%{ 
//Write a lex program to determine if the input is a digit or a floating-point no //
#include<stdio.h>

%}  
number [0-9]
float {number}+"."{number}+

%%

{float}  {printf("Your input %s is a valid floating point no ",yytext);}
{number}+ {printf("Your input %s is an integer but not a valid floating point no ",yytext);}
.* {printf("Your input %s is not a valid floating point no ",yytext);}
  
%%
  
int main()
{
 printf("Enter your input ");
 yylex();
 return 0;
}
int yywrap()
{
return 1;
}
