 /* File:  decaf.l
 * ----------------
 * Lex input file to generate the scanner for the compiler.
 */
%{
    extern "C"
	{
		int yylex(void);
	}

    #include "decaf.h"
    #include "ast.h"
    #include "decaf.tab.h"

    using namespace std;
%}

identifier  [A-Za-z][A-Za-z0-9\_]*
dec_num     [1-9][0-9]*
hex_num     0[xX]([0-9A-Fa-f])+
oct_num     0([0-7])*
double_num  ([0-9])+"."([0-9])*([eE][-+]?[0-9]+)?
str         \"[^\"\n]*\"
str_error   \"[^\"\n]*$
whitespace  [ \n\t]+
comment1    (\/\/[^\n]*)
comment2    (\/\*((([^\*])|(\*[^\/]))*)\*\/)
comment     {comment1}|{comment2}
operator    [\+\-\*\/\%\<\>\=\,\;\.\[\]\(\)\{\}]
/*delimiter [,;\{\}] */

/* %option c++ */
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
"null"          {yylval.ival = 0; return T_NULL;}
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

 /* -------------------- Operators ----------------------------- */
"=="			{return T_EQU;}
"!="			{return T_UEQU;}
">="			{return T_HET;}
"<="			{return T_LET;}
"&&"			{return T_AND;}
"||"			{return T_OR;}
"!"			    {return yytext[0];}
{operator}      {return yytext[0];}

"true"|"false" {
     yylval.bval = (yytext[0] == 't');
     return T_BOOLCONSTANT;
}

 /* --------------- Comments and Whitespace -------------------- */
{comment} {
   printf("%2d: comment:\t %s\n", yylineno, yytext);
}

 /* -------------------- Identifiers --------------------------- */
 /*{identifier} {
   int len = strlen(yytext);
   if (len > MaxIdentLen){
       printf("ReportError: identifier's length is more than %d!\n", MaxIdentLen);
       strncpy(yylval.identifier, yytext, MaxIdentLen);
       yylval.identifier[MaxIdentLen] = '\0';
   }
   else{
       strncpy(yylval.identifier, yytext, len);
       yylval.identifier[len] = '\0';
   }
   printf("%2d: identifier:\t %s\n", yylineno, yytext);
   return T_IDENTIFIER;
}*/

{identifier} {
   printf("%2d: identifier:\t %s\n", yylineno, yytext);
   yylval.sval = strdup(yytext);
   return T_IDENTIFIER;
}

 /* -------------------- Constants ------------------------------ */
{dec_num} {
    yylval.ival = strtol(yytext, NULL, 10);
    printf("%2d: dec_num:\t %d\n", yylineno, yylval.ival);
    return T_INTCONSTANT;
}

{hex_num} {
    yylval.ival = strtol(yytext, NULL, 16);
    printf("%2d: hex_num:\t %d\n", yylineno, yylval.ival);
    return T_INTCONSTANT;
}

{oct_num} {
    yylval.ival = strtol(yytext, NULL, 8);
    printf("%2d: oct_num:\t %d\n", yylineno, yylval.ival);
    return T_INTCONSTANT;
}

{double_num} {
    yylval.dval = atof(yytext);
    printf("%2d: double:\t %lf\n", yylineno, yylval.dval);
	return T_DOUBLECONSTANT;
}

{str} {
    yylval.sval = strdup(yytext);
 	printf("%2d: string:\t %s\n", yylineno, yylval.sval);
	return T_STRINGCONSTANT;
}

{str_error} {
    printf("ReportError: Unterminater string!\n");
    yylval.sval = strdup(yytext);
    return T_STRINGCONSTANT;
}

{whitespace} {;}

 /* -------------------- Default rule (error) ------------------ */
. {
    printf("ReportError: Unrecognized characters!\n");
}

%%


// int main(int argc, char const *argv[])
// {
// 	yylex();
// 	return 0;
// }
