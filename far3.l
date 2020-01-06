%{
#include<stdio.h>
#include<stdlib.h> 
int posint=0,negint=0,posfrac=0,negfrac=0;
%}
%%
[-][0-9]+ {negint++;}
[+]?[0-9]+ {posint++;}
[-][0-9]*\.[0-9]+ {negfrac++;}
[+]?[0-9]*\.[0-9]+ {posfrac++;}
%%
void main(int argc,char *argv[])
{
if(argc!=2)
{
printf("Usage:<./a.out><Sourcefile>");
exit(0);
}
yyin=fopen(argv[1],"r");
yylex();
printf("No of +veint=%d\n No of -veint=%d\nNo of +vefrac=%d\nNo of -vefrac=%d\n",posint,negint,posfrac,negfrac);
}
int yywrap()
{
return 1;
}
