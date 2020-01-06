%{
#include<stdio.h>
int vow=0,cons=0;
%}
%%
[aeiouAEIOU]  {vow++;}
[a-zA-Z]      {cons++;}
.             {;}
\n            {;}
%%
void main()
{
printf("Enter the string:\n");
yylex();
printf("No of vowels is %d\n",vow);
printf("No of consonants is %d\n",cons);
}
int yywrap()
{
return 1;
}

