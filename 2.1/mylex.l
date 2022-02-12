%{
//macros of c program
%}

digit [0-9]
notAdigit [A-Za-z0-9*&#\/]+

%%
{digit}+ {printf("digit");}
{notAdigit} {printf("not digit");}
%%

int main() {
    yylex();
}

int yywrap(void) {
    return 0;
}
