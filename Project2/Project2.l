%{
#include <stdio.h>
#include "Project2.tab.h"
%}
%%
[0-9]+                return NUMBER;
heat                     return TOKHEAT;
on|off                     return STATE;
target                     return TOKTARGET;
temperature           return TOKTEMPERATURE;
humidity		return TOKHUMIDITY;
\n                         /* ignore end of line */;
[" "]+                    /* ignore whitespace */;
%%