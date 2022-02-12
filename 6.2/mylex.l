%{
//Write a Lex program to determine if the input is a Valid email or not.//
#include<stdio.h>
%}
integers [0-9]
domain "@mail.com"|"@mail.org"|"@mail.cc"|"@gmail.com"|"@iiitranchi.ac.in"
letters [a-z]
symbols "_"|"-"|"."

%%
{letters}+{symbols}{0,1}{integers}*{letters}*{integers}*{symbols}{0,1}{integers}*{letters}*{integers}*{domain}  {printf("Your input email %s is correct ",yytext);}
.* {printf("Your input email %s is incorrect ",yytext);}
%%
int main(){
printf("Enter your email to be checked :- ");
yylex();
return 0;
}
int yywrap(){
return 1;
}

