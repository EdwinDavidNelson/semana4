%{
#include <stdio.h>
#include <ctype.h>
%}

%option noyywrap

%%

[ \t]+    { printf(" "); }
.         { ECHO; }
\n        { ECHO; }

%%

int main() {
    yylex();
    return 0;
}