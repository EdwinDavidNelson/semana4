%{
#include <stdio.h>
#include <ctype.h>
%}

%option noyywrap

%%

(0[1-9]|1[0-2])\/(0[1-9]|[12][0-9]|3[01])\/[0-9]{4}    {
    int mes, dia, anio;
    sscanf(yytext, "%d/%d/%d", &mes, &dia, &anio);

    int dias_por_mes[] = {31,28,31,30,31,30,31,31,30,31,30,31};

    int bisiesto = (anio % 4 == 0 && anio % 100 != 0) || (anio % 400 == 0);
    if (bisiesto) dias_por_mes[1] = 29;

    if (dia <= dias_por_mes[mes - 1])
        printf("Fecha valida: %s\n", yytext);
    else
        printf("Fecha invalida (dia imposible): %s\n", yytext);
}
.|\n    { /* ignorar el resto */ }

%%

int main() {
    yylex();
    return 0;
}