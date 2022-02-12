%{
    
    # include <stdio.h>
    int s=0,t=0,v=0,c=0;
%}

%%

[aeiouAEIOU] {v++;}
[A-Za-z] {c++;}
([ ])+ s++;
\t t++;



\n {
    printf("\nNo of Characters = %d",c+v);//To count Characters 
    printf("\nNo of Consonents = %d",c);// To count Consonants
    printf("\nNo of vowels = %d",v);//To count vowels 
    printf("\nNo of Tabs = %d",t);//To count Tabs or no of words 
    printf("\nNo of Whitespaces = %d",s);//To count white spaces
    
}
%%
int main(){
    yylex();
    return 0;
}
int yywrap(void){
    return 0;
}


