%option noyywrap
%{
    #include<stdio.h>
    int charcnt=0;
    int wordcnt=0;
    int linecnt=0;
%}

digit [0-9]
letter [A-Za-z]

%%

({letter}|{digit})+ {wordcnt++;}
"\n" {linecnt++;}(printf("Total number of word: %d\n", wordcnt);wordcnt=0;)

({letter}|{digit}) {charcnt++;}
(printf("Total number of character: %d\n", charcnt);charcnt=0;)

"\n" {linecnt++;}
(printf("Total number of line: %d\n", linecnt);linecnt=0;)

%%

int main()
{
  yylex();
  return 0;
}
