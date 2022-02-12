%{ 

//Write a lex program to count the no of lexioms //
#include<stdio.h>
int k=0,o=0,s=0,num=0,ch=0,i=0;

%}
Keywords    "if"|"printf"|"scanf"|"else"|"while"|"int"|"switch"|"for"|"char"|"break"|"float"|"case"|"double"|"string"|"sort"|"continue"|"do"|"string"|"new"
Operators   "+"|"-"|"*"|"/"|"%"|"++"|"--"|"=="|"!="|">"|"<"|">="|"<="|"&&"|"||"|"!"|"&"|"|"|"^"|"~"|"<<"|">>"|"="|"+="|"-="|"*="|"/="|"%="|"<<="|">>="|"&="|"^="|"|="
Separators  "("|";"|","|")"|"{"|"}"|"["|"]"|"."
%%
{Keywords}   {printf("keyword ->    %s \n",yytext);k++,num++;};
{Operators}  {printf("Operator ->    %s \n",yytext);o++,num++;};
{Separators} {printf("seprator ->    %s \n",yytext);s++,num++;};
[a-zA-Z]+[0-9]*[a-zA-Z]*    {printf("Identifier ->    %s \n",yytext);ch++,num++;};
(")[a-zA-Z]+{Operators}*{Separators}*{Operators}*([ ])*{Operators}*{Separators}*{Operators}*{Separators}*[a-zA-Z]*{Operators}*{Separators}*(")    {printf("Identifier ->    %s \n",yytext);ch++,num++;};
([ ])[a-zA-Z]+  {printf("Identifier ->    %s \n",yytext);ch++,num++;};
[0-9]+ {printf("Integer ->    %s \n",yytext);i++,num++;}

%%

int main()
{
 char file[10];
 printf("Enter your input string");
 scanf("%s",file);
 yyin=fopen(file,"r");
 yylex();
 fclose(yyin);
 printf("Your total no of lexioms = %d\n",num);
 printf("Your sting has %d keys\n",k);
 printf("Your sting has %d identifiers\n",ch);
 printf("Your sting has %d operators\n",o);
 printf("Your sting has %d Integers\n",i);
 return 0;

}
int yywrap()
{
return 1;
}

