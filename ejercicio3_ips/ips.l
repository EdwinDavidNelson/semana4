%{
#include <stdio.h>
#include <ctype.h>
%}

%option noyywrap

%%

[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}    {
    int a, b, c, d;
    sscanf(yytext, "%d.%d.%d.%d", &a, &b, &c, &d);
    if (a < 256 && b < 256 && c < 256 && d < 256)
        printf("IP valida: %s\n", yytext);
    else
        printf("IP invalida: %s\n", yytext);
}
.|\n    { /* ignorar el resto */ }

%%

int main() {
    yylex();
    return 0;
}