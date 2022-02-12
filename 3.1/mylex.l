%{
  
%}

vowel[aeiouAEIOU]
Cons[BCDFGHJ-NP-TV-Zbcdfghj-np-tv-z]



%%
{vowel}+ {printf("The input is a vowel.");}
{Cons}+ {printf("The input is a consonant.");}



%%

int main(){
    yylex();
    return 0;
}
int yywrap(void){
    return 0;
}

