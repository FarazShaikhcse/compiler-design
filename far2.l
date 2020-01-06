%{
#include<stdio.h>
#include<stdlib.h> 
int w=0,c=0,s=0,l=0;
%}
WORD [^ \t\n,\.:]+
BLANK [ ]
EOL [\n]
%%
{WORD} {w++;c=c+yyleng;}
{BLANK} {s++;}
{EOL} {l++;}
.  {c++;}
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
printf("No of words=%d \n No of chars=%d \nNo of spaces=%d \n No of lines=%d",w,c,s,l);
}
int yywrap()
{
return 1;
}

