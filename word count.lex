%option noyywrap
%{
	#include<stdio.h>
	int i=0;
%}

digit [0-9]
letter [A-Za-z]

%%

({letter}|{digit})+ {i++;}
"/n" {printf("Total Number of word is: %d\n",i); i=0;}

%%
int main()
{ 
     yylex();
     return 0;
}
