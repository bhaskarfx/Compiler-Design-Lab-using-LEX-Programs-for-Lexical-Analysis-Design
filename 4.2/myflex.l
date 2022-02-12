%{
#include <stdio.h>
%}

key if|else|while|int|switch|for|char|break|float|case|double|string|sort|continue|do|string|new
 
integer [0-9]

spe ["-"|"+"|"="|"=="|"%"|"!"|"@"|"#"|"%"|"^"|"&"|"*"|"("|")"]

%%
{key}  {printf("it is a keyword :%s not valid",yytext);};
{integer}+[a-zA-Z]*{integer}* {printf("it starts with an integer :%s not valid",yytext);};
{spe}+[a-zA-Z]*{integer}* {printf("it starts with special characters :%s not valid",yytext);};
[a-xA-Z]*{spe}+[a-xA-Z]*{integer}* {printf("it contains special characters which are not allowed :%s not valid",yytext);};
 .*  {printf("%s Valid variable",yytext);};
%%
main(){
yylex();
return 0;
}
int yywrap()
{
}
