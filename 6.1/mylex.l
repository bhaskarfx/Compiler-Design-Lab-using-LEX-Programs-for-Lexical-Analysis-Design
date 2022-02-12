%{ 
//Write a Lex to identify if the string is a valid mobile no or not.//
# include<stdio.h>
int n=0,waste=0,wrong=0;
%}
integers [0-9]
%%
0{integers}* {wrong++;}
{integers} {n++;printf("Number of  scanned digits = %d \n",n);}
. {waste++;printf("your no has total characters = %d \n",n);}
\n {return 1;}  //Very important if you want your program to terminate on presseng enter (Note it ) //

%%

int main(){
printf("Enter your phone number :- ");
yylex();
if((n==10)&&(waste==0))
{
 printf("\nYour entered phone no is Perfectly correct ");
}else if(wrong>0)
{
 printf("\nYour entered phone no is Not correct because your no starts with 0 ");
}else if((n>10)&&(waste==0))
{
 printf("\nYour entered phone no is Not correct because your number has more than 10 digits  ");
}else if((n<10)&&(waste==0))
{
 printf("\nYour entered phone no is Not correct because your number has less than 10 digits  ");
}else
{
 printf("\nYour entered phone no is Not correct because it contain character other than integers ");
}
return 0;
 }
 
int yywrap(){
return 1;
 }
