%{

   # include <stdio.h>
   # include<string.h>

%}

key if|or|else|case|switch|int|float|double|while|for|contnue|break|do|char|string|new


%%
{key}        {printf("Your keyword >> %s << found",yytext);}
.*           {printf("No keyword found ");};
%%
int main(){
printf("Enter the input ");
yylex();
return 0;
}
int yywrap(void){
    return 0;
}

