%{
#include<stdio.h>
int com=0;  
%}
%s COMMENT
%%
"//"[a-zA-Z0-9 .]* {com++;}
"/*"[.]*"*/" {com++;}
"/*" {BEGIN COMMENT;}
<COMMENT>"*/" {BEGIN 0; com++;}
<COMMENT>.|\n {;}
.|\n {fprintf(yyout,"%s",yytext);}
%%
void main(int argc,char *argv[])
{
if(argc!=2)
{
printf("Enter file name");
exit(0);
}
yyin=fopen(argv[1],"r");
yylex();
printf("No of comments:%d\n",com);
}
int yywrap()
{
return 1;
}


