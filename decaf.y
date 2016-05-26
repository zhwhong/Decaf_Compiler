%{
	#include <cstdio>
	#include <iostream>
	#include "ast.h"

	#ifdef NULL
	#undef NULL
	#define NULL (void *)0
	#endif

	extern int yylineno;
	extern char* yytext;

	using namespace std;

	extern "C"
	{
		int yyparse(void);
		int yylex(void);
		int yywrap()
		{
				return 1;
		}
	}
	void yyerror(const char *s);
%}

%start Program

%union{
	double dval;
	char *sval;
}

%token T_BOOL T_INT T_DOUBLE T_STRING
%token T_CLASS T_EXTENDS T_THIS T_NEW T_STATIC T_IDENTIFIER
%token T_WHILE T_FOR T_IF T_ELSE
%token T_RETURN T_BREAK T_VOID T_PRINT T_READINTEGER T_READLINE T_INSTANCEOF
%token T_FALSE T_TRUE T_STRINGCONSTANT T_DOUBLECONSTANT T_INTCONSTANT T_NULL
%token T_HET T_LET T_EQU T_UEQU T_AND T_OR

%left ')' ']'
%left ','
%left '='
%left T_OR
%left T_AND
%left T_EQU T_UEQU
%left '<' '>' T_HET T_LET
%left '+' '-'
%left '*' '/' '%'
%right '!'
%left '.' '(' '['

%nonassoc T_IFX
%nonassoc T_ELSE

%debug
%%

Program     :  ClassDef	{printf("Program\n");}
            |  Program ClassDef	{printf("Program\n");}
            ;
VariableDef :  Variable ';' {printf("VariableDef\n");}
            ;
Variable    :  Type T_IDENTIFIER	{printf("Variable\n");}
            ;
Type        :  T_INT {printf("TYPE\n");}
            |  T_DOUBLE {printf("TYPE\n");}
            |  T_BOOL {printf("TYPE\n");}
            |  T_STRING {printf("TYPE\n");}
            |  T_VOID {printf("TYPE\n");}
            |  T_CLASS T_IDENTIFIER {printf("TYPE\n");}
            |  Type '[' ']' {printf("TYPE\n");}
            ;
Formals     :  Variable {printf("Formals\n");}
            |  Formals ',' Variable {printf("Formals\n");}
            |  {printf("Formals\n");}
            ;
FunctionDef :  T_STATIC Type T_IDENTIFIER '(' Formals ')' StmtBlock {printf("FunctionDef\n");}
            |  Type T_IDENTIFIER '(' Formals ')' StmtBlock {printf("FunctionDef\n");}
            ;
/*
ClassDef    :  T_CLASS T_IDENTIFIER T_EXTENDS T_IDENTIFIER '{' Fields '}'  {printf("ClassDef\n");}
            |  T_CLASS T_IDENTIFIER '{' Fields '}'  {printf("ClassDef\n");}
            ;
Fields      :  Field {printf("Fields\n");}
            |  Fields Field {printf("Fields\n");}
            |  {printf("Fields\n");}
            ;
*/
ClassDef    :  T_CLASS T_IDENTIFIER T_EXTENDS T_IDENTIFIER '{' Fields '}'  {printf("ClassDef\n");}
			|  T_CLASS T_IDENTIFIER T_EXTENDS T_IDENTIFIER '{' '}'  {printf("ClassDef\n");}
            |  T_CLASS T_IDENTIFIER '{' Fields '}'  {printf("ClassDef\n");}
			|  T_CLASS T_IDENTIFIER '{' '}'  {printf("ClassDef\n");}
            ;
Fields      :  Field {printf("Fields\n");}
            |  Fields Field {printf("Fields\n");}
            ;

Field       :  FunctionDef {printf("Field\n");}
            |  VariableDef {printf("Field\n");}
            ;
StmtBlock   :  '{' Stmts '}' {printf("StmtBlock\n");}
            |  '{' '}' {printf("StmtBlock\n");}
            ;
Stmts       :  Stmt {printf("Stmts\n");}
            |  Stmt Stmts {printf("Stmts\n");}
            ;
Stmt        :  VariableDef {printf("Stmt\n");}
            |  SimpleStmt ';' {printf("Stmt\n");}
            |  IfStmt {printf("Stmt\n");}
            |  WhileStmt {printf("Stmt\n");}
            |  ForStmt {printf("Stmt\n");}
            |  BreakStmt ';' {printf("Stmt\n");}
            |  ReturnStmt ';' {printf("Stmt\n");}
            |  PrintStmt ';' {printf("Stmt\n");}
            |  StmtBlock {printf("Stmt\n");}
            ;
SimpleStmt  :  LValue '=' Expr {printf("SimpleStmt\n");}
            |  Call {printf("SimpleStmt\n");}
            |  {printf("SimpleStmt\n");}
            ;
LValue      :  Expr '.' T_IDENTIFIER {printf("LValue\n");}
            |  T_IDENTIFIER {printf("LValue\n");}
            |  Expr '[' Expr ']' {printf("LValue\n");}
            ;
Call        :  Expr '.' T_IDENTIFIER '(' Actuals ')' {printf("Call\n");}
            |  T_IDENTIFIER '(' Actuals ')' {printf("Call\n");}
            ;
Actuals     :  Expr {printf("Actuals\n");}
            |  Actuals ',' Expr {printf("Actuals\n");}
            |  {printf("Actuals\n");}
            ;
ForStmt     :  T_FOR '(' SimpleStmt ';' BoolExpr ';' SimpleStmt ')' Stmt {printf("ForStmt\n");}
            ;
WhileStmt   :  T_WHILE '(' BoolExpr ')' Stmt {printf("WhileStmt\n");}
            ;
IfStmt      :  T_IF '(' BoolExpr ')' Stmt %prec T_IFX {printf("IfStmt\n");}
            |  T_IF '(' BoolExpr ')' Stmt T_ELSE Stmt {printf("IfStmt\n");}
            ;
ReturnStmt  :  T_RETURN {printf("ReturnStmt\n");}
            |  T_RETURN Expr {printf("ReturnStmt\n");}
            ;
BreakStmt   :  T_BREAK {printf("BreakStmt\n");}
            ;
PrintStmt   :  T_PRINT '(' Exprs ')' {printf("PrintStmt\n");}
            ;
Exprs       :  Expr {printf("Exprs\n");}
            |  Exprs ',' Expr {printf("Exprs\n");}
            |  {printf("Exprs\n");}
            ;
BoolExpr    :  Expr {printf("BoolExpr\n");}
            ;
Expr        :  Constant {printf("Expr\n");}
            |  LValue {printf("Expr\n");}
            |  T_THIS {printf("Expr\n");}
            |  Call {printf("Expr\n");}
            |  '(' Expr ')' {printf("Expr\n");}
            |  Expr '+' Expr {printf("Expr\n");}
            |  Expr '-' Expr {printf("Expr\n");}
            |  Expr '*' Expr {printf("Expr\n");}
            |  Expr '/' Expr {printf("Expr\n");}
            |  Expr '%' Expr {printf("Expr\n");}
            |  '-' Expr {printf("Expr\n");}
            |  Expr '<' Expr {printf("Expr\n");}
            |  Expr T_LET Expr {printf("Expr\n");}
            |  Expr '>' Expr {printf("Expr\n");}
            |  Expr T_HET Expr {printf("Expr\n");}
            |  Expr T_EQU Expr {printf("Expr\n");}
            |  Expr T_UEQU Expr {printf("Expr\n");}
            |  Expr T_AND Expr {printf("Expr\n");}
            |  Expr T_OR Expr {printf("Expr\n");}
            |  '!' Expr {printf("Expr\n");}
            |  T_READINTEGER '(' ')' {printf("Expr\n");}
            |  T_READLINE '(' ')' {printf("Expr\n");}
            |  T_NEW T_IDENTIFIER '(' ')' {printf("Expr\n");}
            |  T_NEW Type '[' Expr ']' {printf("Expr\n");}
            |  T_INSTANCEOF '(' Expr ',' T_IDENTIFIER ')' {printf("Expr\n");}
            |  '(' T_CLASS T_IDENTIFIER ')' Expr {printf("Expr\n");}
            ;
Constant    :  T_INTCONSTANT {printf("Constant\n");}
            |  T_DOUBLECONSTANT {printf("Constant\n");}
            |  T_TRUE {printf("Constant\n");}
            |  T_FALSE {printf("Constant\n");}
            |  T_STRINGCONSTANT {printf("Constant\n");}
            |  T_NULL {printf("Constant\n");}
            ;
%%

void yyerror(const char *s)
{
	printf("\nError: (lineno: %d) %s encountered at %s\n", yylineno, s, yytext);
}

/*void yyerror(char *s, ...){
	va_list ap;
	va_start(ap, s);

	if(yylloc.first_line)
		fprintf(stderr, "%d.%d-%d.%d: error: ", yyllc.first_line, yylloc.first_column, yylloc.last_line, yylloc.last_column);
	vprintf(stderr, s, ap);
	fprintf(stderr, "\n");
}*/

int main(){
	/*yydebug = 1;*/
	yydebug = 0;
    yyparse();
	cout << endl;
    return 0;
}
