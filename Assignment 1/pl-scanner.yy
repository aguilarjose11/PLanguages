%{ 
//name, ID; 

#include "tokens.h"
# undef yywrap
# define yywrap() 1



#undef YY_DECL
#define YY_DECL int yylex()
YY_DECL;


// Code run each time a pattern is matched.
#undef  YY_USER_ACTION  
# define YY_USER_ACTION  {}



%}

%option yylineno
%option noyywrap 

DIGIT [0-9] 
ALPHA [a-zA-Z]

%%


\/\/.*$    { }

[ \t]+				{ }
[\n]+				{ }


";"							  { 
										return ';'; 
                  }

"="							  { 
										return OP_ASSIGN; 
                  }

"main"					{ 
										return K_MAIN; 
                  }


{DIGIT}+					{ 
										return L_INTEGER;
									}

"@"{ALPHA}({ALPHA}|{DIGIT}|_)*       { 
									return T_ID;
							  }

<<EOF>>						{ return T_EOF ; }
.									{ return yytext[0]; }



%%

int dummy_function(){

  return 1;
}


