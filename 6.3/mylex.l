%{
// Write a Lex program to find the frequency of the given keyword in the file //
#include<stdio.h>
int n=0;
%} 
key  "for"
%%
{key}  {n++;};
.  {}
%%
int main()
{
	char file[20];
	printf("Enter the name of your input file :- ");
	scanf("%s",file);
	yyin=fopen(file,"r");
	yylex();//taking keyword as the input keyword to be searched//
	fclose(yyin);
	printf("\nYour input file containe the keyword >> for << %d times ",n);
	
	return 0;
	
}
int yywrap()
{return 1;
}
