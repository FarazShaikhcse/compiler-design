%{
#include<stdio.h>
int issimple=1;
%}
%%
[ \t\n ]+[aA][nN][dD][ \t\n ]+ {issimple=0;}
[ \t\n ]+[oO][rR][ \t\n ]+ {issimple=0;}
[ \t\n ]+[bB][uU][tT][ \t\n ]+ {issimple=0;}
. {;}
%%
void main()
{
printf("Enter the statement:\n");
yylex();
if(issimple==1)
printf("Statement is simple");
else
printf("Statement is complex");
}
int yywrap()
{
return 1;
}
