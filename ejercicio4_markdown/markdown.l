%{
#include <stdio.h>
#include <ctype.h>
%}

%option noyywrap

%%

\[[^\]]+\]\([^\)]+\)    {
    char texto[256], url[256];
    sscanf(yytext, "[%[^]]](%[^)])", texto, url);
    printf("Texto: %s\n", texto);
    printf("URL: %s\n", url);
    printf("---\n");
}
.|\n    { /* ignorar el resto */ }

%%

int main() {
    yylex();
    return 0;
}