%{
  #include<stdio.h>
  void yyerror(char *)
  #include "y.tsb.h"
}%


%token

%% 
[0-9]+ {
yylval = atoi(yytext);
return INTEGER;
}
[-+\n] return *yytext;
[\t]; /* skip whitespace */
.yyerror("Invalid character");
%%
int yywarp(void){
return 1;
}
