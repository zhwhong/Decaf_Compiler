%{
    #include <stdio.h>
    #include "y.tab.h"
    int intval;
	char *charval;
    int count = 0;
    FILE *fin;
%}

keyword bool|break|class|else|extends|for|if|int|double|new|null|return|string|this|void|while|static|Print|ReadInteger|ReadLine|instanceof|true|false
identifier  [A-Za-z][A-Za-z0-9\_]*
dec_num     [1-9][0-9]*
hex_num     0[xX]([0-9A-Fa-f])+
oct_num     0([0-7])*
double_num  ([0-9])+"."([0-9])*([eE][-+]?[0-9]+)?
str         \"[^"\n]*\"
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
"bool"          {return MYBOOL;}
"break"         {return MYBREAK;}
"class"         {return MYCLASS;}
"else"          {return MYELSE;}
"extends"       {return MYEXTENDS;}
"for"           {return MYFOR;}
"if"            {return MYIF;}
"int"           {return MYINT;}
"double"		{return MYDOUBLE;}
"new"           {return MYNEW;}
"null"          {return MYNULL;}
"return"        {return MYRETURN;}
"string"        {return MYSTRING;}
"this"          {return MYTHIS;}
"void"          {return MYVOID;}
"while"         {return MYWHILE;}
"static"        {return MYSTATIC;}
"Print"         {return MYPRINT;}
"ReadInteger"   {return MYREADINTEGER;}
"ReadLine"      {return MYREADLINE;}
"instanceof"    {return MYINSTANCEOF;}
"true"			{return MYTRUE;}
"false"			{return MYFALSE;}


 /* -------------------- Operators ----------------------------- */
"=="			{return MYEQU;}
"!="			{return MYUEQU;}
">="			{return MYHET;}
"<="			{return MYLET;}
"&&"			{return MYAND;}
"||"			{return MYOR;}
"!"			    {return yytext[0];}
{operator}      {return yytext[0];}

{comment} {
/* printf("%2d: comment:\t %s\n", yylineno, yytext);            */
    }

{identifier} {
/* 		printf("%2d: identifier:\t %s\n", yylineno, yytext);    */
/* 		yylval.cVal = strdup(yytext);                           */
		return MYIDENTIFIER;
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
		return MYINTCONSTANT;
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
		return MYINTCONSTANT;
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
		return MYINTCONSTANT;
	}

{double_num} {
/* 		printf("%2d: double:\t %s\n", yylineno, yytext);        */
/* 		yylval.dVal = atof(yytext);                             */
		return MYDOUBLECONSTANT;
	}

{str} {
/*		charval = strdup(yytext+1);                             */
/*		if (charval[yyleng-2] != '"')                           */
/*			printf("improperly terminated string\n");           */
/*		else                                                    */
/*			charval[yyleng-2] = '\0';                           */
/* 		printf("%2d: string:\t %s\n", yylineno, charval);       */
/* 		yylval.cVal = strdup(charval);                          */
		return MYSTRINGCONSTANT;
	}

{whitespace} {;}

%%

void main()
{
    printf("============================\n");
    printf("Decaf词法分析器输出类型说明:\n");
    printf("1：保留字\n");
    printf("2：标识符\n");
    printf("3：常  量\n");
    printf("4：操作符\n");
    printf("5：界  符\n");
    printf("6：注  释\n");
    printf("============================\n");
    if(!(fin=fopen("result.txt","w+"))){
        printf("Open file result.txt error!\n");
    }
    fprintf(fin,"============================\n");
    fprintf(fin,"Decaf词法分析器输出类型说明:\n");
    fprintf(fin,"1：保留字\n");
    fprintf(fin,"2：标识符\n");
    fprintf(fin,"3：常  量\n");
    fprintf(fin,"4：操作符\n");
    fprintf(fin,"5：界  符\n");
    fprintf(fin,"6：注  释\n");
    fprintf(fin,"============================\n");
    yyin = fopen("test.txt","r");
    yylex();
    fclose(yyin);
    fclose(fin);
}
int yywrap()
{
    return 1;
}
