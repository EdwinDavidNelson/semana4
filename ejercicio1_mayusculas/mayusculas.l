%{
#include <stdio.h>
#include <ctype.h>
%}

%option noyywrap

%%

[A-Z][a-zA-Z]*    { printf("Palabra reservada/importante: %s\n", yytext); }
[a-zA-Z]+         { /* ignorar palabras que no inician con mayúscula */ }
.|\n              { /* ignorar el resto */ }

%%

int main() {
    yylex();
    return 0;
}