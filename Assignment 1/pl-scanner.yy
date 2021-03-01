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

"integer"							  { 
										return K_INTEGER; 
                  }
"float"							  { 
										return K_FLOAT; 
                  }
"foreach"							  { 
										return K_FOREACH; 
                  }
"begin"							  { 
										return K_BEGIN; 
                  }
"end"							  { 
										return K_END; 
                  }
"repeat"							  { 
										return K_REPEAT; 
                  }

"until"							  { 
										return K_UNTIL; 
                  }
"while"							  { 
										return K_WHILE; 
                  }
"declare"							  { 
										return K_DECLARE; 
                  }
"if"							  { 
										return K_IF; 
                  }
"then"							  { 
										return K_THEN; 
                  }
"print"							  { 
										return K_PRINT; 
                  }

%%

int dummy_function(){

  return 1;
}


