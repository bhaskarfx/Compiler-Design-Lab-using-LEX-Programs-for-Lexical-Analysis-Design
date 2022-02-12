%{

#include<stdio.h>

%}
Arithmetic "+"|"-"|"*"|"/"|"%"|"++"|"--"
Relational "=="|"!="|">"|"<"|">="|"<="
Logical  "&&"|"||"|"!"
Bitwise  "&"|"|"|"^"|"~"|"<<"|">>"
Assignment "="|"+="|"-="|"*="|"/="|"%="|"<<="|">>="|"&="|"^="|"|="

%%
{Arithmetic} {printf("Your input %s is a valid Arithmetic operator ",yytext);}
{Relational} {printf("Your input %s is a valid Relational operator ",yytext);}
{Logical} {printf("Your input %s is a valid Logical operator ",yytext);}
{Bitwise} {printf("Your input %s is a valid Bitwise operator ",yytext);}
{Assignment} {printf("Your input %s is a valid Assignment operator ",yytext);}
.* {printf("Your input %s is a not valid operator ",yytext);}

%%

int main()
{
 printf("Enter Your String Input ");
 yylex();
 return 0;
}
int yywrap()
{
return 1;
}

