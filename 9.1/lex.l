%{
    //lex file to check if the given input
    //string ends with (0 or 1) or not
    # include <stdio.h>
    # include <stdlib.h>
    # include "y.tab.h"
%}

%%

[0-9]+ {
    yylval.f = yytext;
    return STR;
}
[\n] {;}
.* {return yytext[0];}
%%

int yywrap(){
    return -1;
}
