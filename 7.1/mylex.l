%{//Lex program to print the total characters, white spaces, tabs and lines in the given input file.//
#include <stdio.h>
int ch=0,ws=0,t=0,lin=1;

%}

%%
\n {lin++;};
([ ]) {ws++;};
\t {t++;};
. {ch++;};
%%

int main()
{
char file[10];
printf("Plese Enter your input string :- ");
scanf("%s",file);

yyin=fopen(file,"r");
yylex();
fclose(yyin);
printf("\nNo of line = %d",lin);
printf("\nNo of White spaces  = %d",ws);
printf("\nNo of tabs  = %d",t);
printf("\nNo of characters = %d",ch);
printf("\n------------------------ THANK YOU ----------------------------");
return 0;
}
int yywrap(void)
{
return 1;
}
