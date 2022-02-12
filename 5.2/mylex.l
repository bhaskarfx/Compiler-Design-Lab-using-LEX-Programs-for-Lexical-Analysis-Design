%{ 
//Write a lex program to verify if the input is a valid URL or not.//
#include<stdio.h>
%}

protocol "http"|"https"|"ftp"|"mailto"|"file"|"data"|"irc"
web "www"
dom "com"|"in"|"org"
%%
{protocol}[://]+{web}.[a-z]+.{dom}*[/.?_&=]*[/a-zA-Z0-9]*[/.?_-&=a-zA-Z0-9]*   {printf("Your input URL  %s  is valid ",yytext);}
.* {printf("Your input URL  %s  is Invalid ",yytext);}

%%

int main(){
char file[10];
printf("Enter your input file name ");
scanf("%s",file);
yyin=fopen(file,"r");//Takes the input from FILE named file//
yylex(); //The work in the yylex execuion part is done//
fclose(yyin);
return 0;
}
int yywrap()//Tells that the execution is over//
{
 return 1;
}
