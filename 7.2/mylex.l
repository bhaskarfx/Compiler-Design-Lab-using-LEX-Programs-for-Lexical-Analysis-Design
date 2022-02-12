%{
//Write a Lex program to count number of lexemes of the given word in a file//
#include <stdio.h>
int lex=0,o=0,k=0,i=0,f=0,s=0,str=0;

%}

ope   "+"|"-"|"*"|"/"|"%"|"++"|"--"|"=="|"!="|">"|"<"|">="|"<="|"&&"|"||"|"!"|"&"|"|"|"^"|"~"|"<<"|">>"|"="|"+="|"-="|"*="|"/="|"%="|"<<="|">>="|"&="|"^="|"|="
key   "int"|"float"|"double"|"char"|"string"|"for"|"while"|"do"|"catch"|"switch"|"case"|"if"|"else"
string [a-zA-Z]+
integer  [0-9]+
float   {integer}"."{integer}
sep  "("|";"|","|")"|"{"|"}"|"["|"]"|"."

%%

{ope} {lex++; o++;};
{key} {lex++;k++;};
{integer} {lex++;i++;};
{float} {lex++;f++;};
{sep} {lex++;s++;};
{string} {lex++;str++;}
%%

int main()
{
char file[10];
printf("Plese Enter your input file name  :- ");
scanf("%s",file);
yyin=fopen(file,"r");
yylex();
fclose(yyin);
printf("\nTotal no of keys   = %d",k);
printf("\nTotal no of operators = %d",o);
printf("\nTotal no of strings  = %d",str);
printf("\nTotal no of integers  = %d",i);
printf("\nTotal no of frctional no's  = %d",f);
printf("\nTotal no of seprators  = %d",s);
printf("\nTotal no of lexemes  = %d",lex);
printf("\n------------------------ THANK YOU ----------------------------");
return 0;
}
int yywrap(void)
{
return 1;
}
