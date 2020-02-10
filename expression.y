%{
#include<stdio.h>
%}
%token NUMBER ID NL
%left '+''-'
%left '*''/'
%%
stmt: exp NL{ printf("valid expression"); exit(0);}
    ;
exp: exp'+'exp
   | exp'-'exp
   | exp'*'exp
   | exp'/'exp
   | '('exp')'
   |ID
   |NUMBER
   ;
%%
int yyerror(char *msg)
{
printf("Invalid expression");
return 0;
}
int main()
{
printf("Enter the expression:");
yyparse();
}

