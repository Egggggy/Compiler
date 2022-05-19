%{
#include <stdio.h>
#include <string.h>
#include <stdbool.h>
bool isError = false;
int yyerror(const char *str){
    isError = true;
    fprintf(stderr,"error:%s\n",str);
    return 0;
}

int yywrap(){
    return 1;
}
int main()
{
    yyparse();
    if(!isError){
    	printf("correct\n");
    }
    
}

%}

%token NUMBER TOKHEAT STATE TOKTARGET TOKTEMPERATURE TOKHUMIDITY
%%
commands: commands command
          | 
          command
           ;

       command:
                heat_switch
                |
                target_set
                ;

       heat_switch:
                TOKHEAT STATE
                ;
	target_set:
                TOKTARGET TOKTEMPERATURE NUMBER
                |
                TOKTARGET TOKHUMIDITY NUMBER
                ;
%%
