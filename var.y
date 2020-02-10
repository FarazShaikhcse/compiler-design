%{
#include<stdio.h>
%}
%token ch dig nl
%% 
s:letter word nl {printf("Valid");exit(0);}
 ;
letter: ch
      ;
word:ch word
    |dig word
    |ch
    |dig
    ;
%%
int yyerror(char *msg)
{
printf("Invalid variable");
return 0;
}
int main()
{
printf("Enter the variable:");
yyparse();
}


