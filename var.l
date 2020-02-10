%{
#include<stdio.h>
#include "y.tab.h"
%}
%%
[a-zA-Z] {return ch;}
[0-9] {return dig;}
. {return yytext[0];}
[\n] {return nl;}
%%
int yywrap()
{
return 1;
}


