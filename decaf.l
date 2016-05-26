%{
    extern "C"
	{
		int yylex(void);
	}
    #include <cstdio>
    #include "ast.h"
    #include "decaf.tab.h"

    using namespace std;

    int intval;
	char *charval;
    int wordcount = 1;
%}

identifier  [A-Za-z][A-Za-z0-9\_]*
dec_num     [1-9][0-9]*
hex_num     0[xX]([0-9A-Fa-f])+
oct_num     0([0-7])*
double_num  ([0-9])+"."([0-9])*([eE][-+]?[0-9]+)?
str         \"[^\"\n]*\"
str_error   \"[^\"\n]*$
whitespace  [ \n\t]+
/*delimiter [,;\{\}] */
comment1    (\/\/[^\n]*)
comment2    (\/\*((([^\*])|(\*[^\/]))*)\*\/)
comment     {comment1}|{comment2}
operator    [\+\-\*\/\%\<\>\=\,\;\.\[\]\(\)\{\}]

%option yylineno
%option never-interactive
%option noyywrap

%%
 /* --------------------- Keywords ------------------------------- */
"bool"          {return T_BOOL;}
"break"         {return T_BREAK;}
"class"         {return T_CLASS;}
"else"          {return T_ELSE;}
"extends"       {return T_EXTENDS;}
"for"           {return T_FOR;}
"if"            {return T_IF;}
"int"           {return T_INT;}
"double"		{return T_DOUBLE;}
"new"           {return T_NEW;}
"null"          {return T_NULL;}
"return"        {return T_RETURN;}
"string"        {return T_STRING;}
"this"          {return T_THIS;}
"void"          {return T_VOID;}
"while"         {return T_WHILE;}
"static"        {return T_STATIC;}
"Print"         {return T_PRINT;}
"ReadInteger"   {return T_READINTEGER;}
"ReadLine"      {return T_READLINE;}
"instanceof"    {return T_INSTANCEOF;}
"true"			{return T_TRUE;}
"false"			{return T_FALSE;}


 /* -------------------- Operators ----------------------------- */
"=="			{return T_EQU;}
"!="			{return T_UEQU;}
">="			{return T_HET;}
"<="			{return T_LET;}
"&&"			{return T_AND;}
"||"			{return T_OR;}
"!"			    {return yytext[0];}
{operator}      {return yytext[0];}

{comment} {
/* printf("%2d: comment:\t %s\n", yylineno, yytext);            */
    }

{identifier} {
/* 		printf("%2d: identifier:\t %s\n", yylineno, yytext);    */
/* 		yylval.cVal = strdup(yytext);                           */
		return T_IDENTIFIER;
	}

{dec_num} {
/*		charval = strdup(yytext);                               */
/*		int intval = 0;                                         */
/*		while (*charval != '\0'){                               */
/*			intval *= 10;                                       */
/*			intval += *charval - '0';                           */
/*			++charval; */
/*		}   */
/* 		printf("%2d: decimal:\t %d\n", yylineno, intval);       */
/* 		yylval.uVal = intval;                                   */
		return T_INTCONSTANT;
	}

{hex_num} {
/*		charval = strdup(yytext+2);                             */
/*		int intval = 0;                                         */
/*		while (*charval != '\0'){                               */
/*			intval *= 16;                                       */
/*			if ((*charval >= 'a' && *charval <= 'f')            */
/*				|| (*charval >= 'A' && *charval <= 'F')){       */
/*				intval += *charval - 'a' + 10;                  */
/*			} else {                                            */
/*				intval += *charval - '0';                       */
/*			}                                                   */
/*			++charval;                                          */
/*		}                                                       */
/* 		printf("%2d: hex_num: %s\n", yylineno, yytext);         */
/* 		yylval.uVal = intval;                                   */
		return T_INTCONSTANT;
	}

{oct_num} {
/*		charval = strdup(yytext+1);                             */
/*		int intval = 0;                                         */
/*		while (*charval != '\0'){                               */
/*			intval *= 8;                                        */
/*			intval += *charval - '0';                           */
/*			++charval;                                          */
/*		}                                                       */
/* 		printf("%2d: oct_num: %s\n", yylineno, yytext);         */
/* 		yylval.uVal = intval;                                   */
		return T_INTCONSTANT;
	}

{double_num} {
/* 		printf("%2d: double:\t %s\n", yylineno, yytext);        */
/* 		yylval.dVal = atof(yytext);                             */
		return T_DOUBLECONSTANT;
	}

{str} {
/*		charval = strdup(yytext+1);                             */
/*		if (charval[yyleng-2] != '"')                           */
/*			printf("improperly terminated string\n");           */
/*		else                                                    */
/*			charval[yyleng-2] = '\0';                           */
/* 		printf("%2d: string:\t %s\n", yylineno, charval);       */
/* 		yylval.cVal = strdup(charval);                          */
		return T_STRINGCONSTANT;
	}

{str_error} {
        printf("Unterminater string!\n");
        yylval.sval = yytext;
        return T_STRINGCONSTANT;
}

{whitespace} {;}

%%
