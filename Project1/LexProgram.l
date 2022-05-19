%{
#include <stdio.h>
%}

%%
[a-zA-Z][a-zA-Z0-9]*	printf("WORD ");
[0-9]+			printf("NUMBER ");
[0-9]+.[0-9]+		printf("FLOAT ");
\"                      printf("QUOTE ");
\{                     	printf("OBRACE ");
\}                      printf("EBRACE ");
;                      	printf("SEMICOLON ");
\n                      printf("\n");
">"			printf("ASSIGN ");
"<"			printf("ASSIGN ");
"<>"			printf("ASSIGN ");
"="			printf("ASSIGN ");
"=="			printf("ASSIGN ");
">="			printf("ASSIGN ");
"<="			printf("ASSIGN ");
[ \t]+                      /* ignore whitespace */;
%%

