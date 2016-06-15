/* File: decaf.y
 * --------------
 * Bison input file to generate the parser for the compiler.
 */
%{
	#include "decaf.h"
	#include <iostream>
	#include <list>
	#include "ast.h"

	/*#ifdef NULL
		#undef NULL
		#define NULL (void *)0
	#endif*/

	extern char *yytext;
	extern int yylineno;

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
	void yyerror(const char *s)
	{
		printf("\nError: (lineno: %d) %s encountered at %s\n", yylineno, s, yytext);
	}

	EntityTable *global_symtab = new EntityTable();
	list<Entity*>* toplevel = new list<Entity*>();
	ClassEntity* objectclass = new ClassEntity("Object", (ClassEntity*)NULL, new list<Entity*>());
%}

%start Program

/* yylval
 * ------
 */
%union{
	/* Primitive */
	int 			ival;
	bool 			bval;
	char 			*sval;
	double 			dval;
	/*char 			identifier[MaxIdentLen+1];*/
	/* List */
	list<Entity*>		*entityList;
	list<Expression*>	*exprList;
	list<Statement*>	*stmtList;
	/* Entity */
	Entity				*entity;
	ClassEntity			*classEntity;
	FunctionEntity		*functionEntity;
	VariableEntity		*variableEntity;
	/* Statement */
	Statement			*statement;
	/* Type */
	Type				*typeVal;
	/* Expression */
	Expression			*expression;
}
/* Tokens
 * ------
 */
%token T_VOID T_BOOL T_INT T_DOUBLE T_STRING T_CLASS
%token T_LET T_HET T_EQU T_UEQU T_AND T_OR
%token T_EXTENDS T_THIS T_NEW T_STATIC T_INSTANCEOF
%token T_WHILE T_FOR T_IF T_ELSE T_RETURN T_BREAK
%token T_PRINT T_READINTEGER T_READLINE

/*%token <identifier> T_IDENTIFIER*/
%token <ival> T_INTCONSTANT T_NULL
%token <bval> T_BOOLCONSTANT
%token <sval> T_STRINGCONSTANT T_IDENTIFIER
%token <dval> T_DOUBLECONSTANT

/* Non-terminal types
 * ------------------
 */
/* List */
 %type <entityList> Program Formals Fields VariablePlus
 %type <exprList> Actuals ExprPlus
 %type <stmtList> Stmts
 /* Entity */
 %type <entity> Field
 %type <classEntity> ClassDef ExtendsQ
 %type <functionEntity> FunctionDef
 %type <variableEntity> VariableDef Variable
 /* Statement */
 %type <statement> StmtBlock Stmt SimpleStmt ForStmt WhileStmt IfStmt
 %type <statement> ReturnStmt BreakStmt PrintStmt
 %type <typeVal> Type
 %type <expression> Expr BoolExpr LValue Call Constant

/* Precedence and associativity
 * ----------------------------
 * Here we establish the precedence and associativity of the
 * tokens as needed to resolve conflicts and remove ambiguity.
 */
%left ')' ']'
%left ','
%left '='
%left T_OR
%left T_AND
%nonassoc T_EQU T_UEQU
%nonassoc '<' '>' T_LET T_HET
%left '+' '-'
%left '*' '/' '%'
%right '!'
%left '.' '(' '['
%nonassoc T_IFX
%nonassoc T_ELSE

%debug
%glr-parser
/* %expect-rr 1 */

%%
/* Rules
 * -----
 */
Program		:  ClassDef {
				$$ = toplevel;
				$$->push_back($1);
				printf("Program: ClassDef\n");
			}
            |  Program ClassDef {
				$$ = $1;
				$$->push_back($2);
				printf("Program: Program ClassDef\n");
			}
            ;
VariableDef :  Variable ';' {
				$$ = $1;
				printf("VariableDef: Variable ;\n");
			}
            ;
Variable    :  Type T_IDENTIFIER {
				bool current;
				//printf("before into find_entity\n");
				Entity* entity = global_symtab->find_entity($2, VARIABLE_ENTITY, &current);
				//printf("after  into find_entity\n");
				VariableEntity* variable = dynamic_cast<VariableEntity*>(entity);
				if (variable && current) {
			/* 						yyerror("Redefinition of variable name"); */
					printf("  Redefined variable name: %s\n", $2);
				}
				$$ = new VariableEntity($2, $1);
				printf("Variable: Type T_IDENTIFIER\n");
			}
            ;
Type        :  T_INT {
				$$ = new IntType();
				printf("Type: T_INT\n");
			}
            |  T_DOUBLE {
				$$ = new DoubleType();
				printf("Type: T_DOUBLE\n");
			}
            |  T_BOOL {
				$$ = new BooleanType();
				printf("Type: T_BOOL\n");
			}
            |  T_STRING {
				$$ = new StringType();
				printf("Type: T_STRING\n");
			}
            |  T_VOID {
				$$ = new VoidType();
				printf("Type: T_VOID\n");
			}
            |  T_CLASS T_IDENTIFIER {
				bool current;
				Entity* entity = global_symtab->find_entity($2, CLASS_ENTITY, &current);
				ClassEntity* classEntity = dynamic_cast<ClassEntity*>(entity);
				if (!classEntity) {
/* 						yyerror("Undefined class");      */
					printf("  Undefined class name: %s\n", $2);
					$$ = new ErrorType();
				} else {
					$$ = new InstanceType(classEntity);
				}
				/*$$ = new ClassType($2);*/
				printf("Type: T_CLASS T_IDENTIFIER\n");
			}
            |  Type '[' ']' {
				$$ = new ArrayType($1);
				printf("Type: Type '[' ']'\n");
			}
            ;
Formals     :  VariablePlus{
				$$ = $1;
				printf("Formals: VariablePlus\n");
			}
            |  {
				$$ = new list<Entity*>();
				printf("Formals: (empty)\n");
			}
            ;
VariablePlus:  Variable {
				$$ = new list<Entity*>();
				$$->push_back($1);
				printf("VariablePlus: Variable\n");
			}
            |  VariablePlus ',' Variable {
				$$ = $1;
				$$->push_back($3);
				printf("VariablePlus: VariablePlus ',' Variable\n");
			}
			;
FunctionDef :  T_STATIC Type T_IDENTIFIER '(' Formals ')' StmtBlock {
				$$ = new FunctionEntity($3, $2, $5, $7);
				printf("FunctionDef: T_STATIC Type T_IDENTIFIER '(' Formals ')' StmtBlock\n");
			}
            |  Type T_IDENTIFIER {
					$<functionEntity>$ = new FunctionEntity($2, $1, nullptr, nullptr);
					global_symtab->enter_block();
			   }'(' Formals ')' StmtBlock {
				    $$ = $<functionEntity>3;
				    $$->formal_params = $5;
				    $$->function_body = $7;
				    global_symtab->leave_block();
					/*$$ = new FunctionEntity($2, $1, $4, $6);*/
					printf("FunctionDef: Type T_IDENTIFIER '(' Formals ')' StmtBlock\n");
			}
            ;
ClassDef    :  T_CLASS T_IDENTIFIER {
					bool current;
					Entity* entity = global_symtab->find_entity($2, CLASS_ENTITY, &current);
					ClassEntity* classEntity = dynamic_cast<ClassEntity*>(entity);
					if (classEntity){
				/* 						yyerror("Redefinition of class"); */
						printf("  Redefined class name: %s\n", $2);
					}
					$<classEntity>$ = new ClassEntity($2, nullptr, nullptr);
					global_symtab->enter_block();
			   }
			   ExtendsQ '{' Fields '}'  {
				    $$ = $<classEntity>3;
				    $$->superclass = $4;
				    $$->class_members = $6;
				    global_symtab->leave_block();
					/*$$ = new ClassEntity($2, $3, $5);*/
					printf("ClassDef: T_CLASS T_IDENTIFIER ExtendsQ '{' Fields '}'\n");
			}
            ;
ExtendsQ	:  T_EXTENDS T_IDENTIFIER {
					bool current;
					Entity* entity = global_symtab->find_entity($2, CLASS_ENTITY, &current);
					ClassEntity* superclass = dynamic_cast<ClassEntity*>(entity);
					if (!superclass){
				/* 						yyerror("Undeclared superclass"); */
						printf("  Undeclared superclass name: %s\n", $2);
					}
					$$ = superclass;
				/*$$ = new ClassEntity($2, objectclass, new list<Entity*>());*/
				printf("ExtendsQ: T_EXTENDS T_IDENTIFIER\n");
			}
			| {
				$$ = objectclass;
				printf("ExtendsQ: (empty)\n");
			}
			;
Fields      :  Fields Field {
				$$ = $1;
				$$->push_back($2);
				printf("Fields: Fields Field\n");
			}
			| {
				$$ = new list<Entity*>();
				printf("Fields: (empty)\n");
			}
            ;
Field       :  VariableDef {
				$$ = $1;
				printf("Field: VariableDef\n");
			}
            |  FunctionDef {
				$$ = $1;
				printf("Field: FunctionDef\n");
			}
            ;
StmtBlock   :  {
				global_symtab->enter_block();
			} '{' Stmts '}' {
				$$ = new BlockStatement($3);
				$$->level_number = global_symtab->level;
				global_symtab->leave_block();
				printf("StmtBlock: '{' Stmts '}'\n");
			}
            ;
Stmts       :  Stmts Stmt {
				$$ = $1;
				$$->push_back($2);
				printf("Stmts: Stmts Stmt\n");
			}
			|  {
				$$ = new list<Statement*>();
				printf("Stmts: (empty)\n");
			}
            ;
Stmt        :  VariableDef {
				$$ = new DeclStatement($1);
				$$->level_number = global_symtab->level;
				printf("Stmt: VariableDef\n");
			}
            |  SimpleStmt ';' {
				$$ = $1;
				printf("Stmt: SimpleStmt ';'\n");
			}
            |  IfStmt {
				$$ = $1;
				printf("Stmt: IfStmt\n");
			}
            |  WhileStmt {
				$$ = $1;
				printf("Stmt: WhileStmt\n");
			}
            |  ForStmt {
				$$ = $1;
				printf("Stmt: ForStmt\n");
			}
            |  BreakStmt ';' {
				$$ = $1;
				printf("Stmt: BreakStmt ';'\n");
			}
            |  ReturnStmt ';' {
				$$ = $1;
				printf("Stmt: ReturnStmt ';'\n");
			}
            |  PrintStmt ';' {
				$$ = $1;
				printf("Stmt: PrintStmt ';'\n");
			}
            |  StmtBlock {
				$$ = $1;
				printf("Stmt: StmtBlock\n");
			}
            ;
SimpleStmt  :  LValue '=' Expr {
				$$ = new AssignStatement($1, $3);
				printf("SimpleStmt: LValue '=' Expr\n");
			}
            |  Call {
				$$ = new CallStatement($1);
				printf("SimpleStmt: Call\n");
			}
            |  {
				$$ = new NullStatement();
				printf("SimpleStmt: (empty)\n");
			}
            ;
LValue      :  Expr '.' T_IDENTIFIER {
				$$ = new MemberAccess($1, $3);
				printf("LValue: Expr '.' T_IDENTIFIER\n");
			}
            |  T_IDENTIFIER {
				bool current;
				Entity* entity = global_symtab->find_entity($1, VARIABLE_ENTITY, &current);
				if (entity && current){
					// local variable
					VariableEntity* local = dynamic_cast<VariableEntity*>(entity);
					$$ = new IdExpression(local);
				} else if (entity = global_symtab->find_entity($1, CLASS_ENTITY, &current)){
					// class variable
					ClassEntity* classEntity = dynamic_cast<ClassEntity*>(entity);
					$$ = new IdExpression(classEntity);
				} else if (entity = global_symtab->find_entity($1, VARIABLE_ENTITY, &current)){
					// outter variable
					VariableEntity* variable = dynamic_cast<VariableEntity*>(entity);
					$$ = new IdExpression(variable);
				} else {
					yyerror("Undefined variable");
					printf("  Undefined variable name: %s\n", $1);
					$$ = new MemberAccess(new ThisExpression(), $1);
				}
				/*$$ = new MemberAccess((Expression*)NULL, $1);*/
				printf("LValue: T_IDENTIFIER\n");
			}
            |  Expr '[' Expr ']' {
				$$ = new ArrayAccess($1, $3);
				printf("LValue: Expr '[' Expr ']'\n");
			}
            ;
Call        :  Expr '.' T_IDENTIFIER '(' Actuals ')' {
				$$ = new FunctionInvocation($1, $3, $5);
				printf("Call: Expr '.' T_IDENTIFIER '(' Actuals ')'\n");
			}
            |  T_IDENTIFIER '(' Actuals ')' {
				$$ = new FunctionInvocation(new NullExpression(), $1, $3);
				printf("Call: T_IDENTIFIER '(' Actuals ')'\n");
			}
            ;
Actuals     :  ExprPlus{
				$$ = $1;
				printf("Actuals: ExprPlus\n");
			}
            |  {
				$$ = new list<Expression*>();
				printf("Actuals: (empty)\n");
			}
            ;
ExprPlus  :  Expr {
				$$ = new list<Expression*>();
				printf("ExprPlus: Expr\n");
			}
            |  ExprPlus ',' Expr {
				$$ = $1;
				$$->push_back($3);
				printf("ExprPlus: ExprPlus ',' Expr\n");
			}
			;
ForStmt     :  T_FOR '(' SimpleStmt ';' BoolExpr ';' SimpleStmt ')' Stmt {
				$$ = new ForStatement($3, $5, $7, $9);
				$$->level_number = global_symtab->level;
				printf("ForStmt: T_FOR '(' SimpleStmt ';' BoolExpr ';' SimpleStmt ')' Stmt\n");
			}
            ;
WhileStmt   :  T_WHILE '(' BoolExpr ')' Stmt {
				$$ = new WhileStatement($3, $5);
				$$->level_number = global_symtab->level;
				printf("WhileStmt: T_WHILE '(' BoolExpr ')' Stmt\n");
			}
            ;
IfStmt      :  T_IF '(' BoolExpr ')' Stmt %prec T_IFX {
				$$ = new IfStatement($3, $5, new NullStatement());
				$$->level_number = global_symtab->level;
				printf("IfStmt: T_IF '(' BoolExpr ')' Stmt %%prec T_IFX\n");
			}
            |  T_IF '(' BoolExpr ')' Stmt T_ELSE Stmt {
				$$ = new IfStatement($3, $5, $7);
				$$->level_number = global_symtab->level;
				printf("IfStmt: T_IF '(' BoolExpr ')' Stmt T_ELSE Stmt\n");
			}
            ;
ReturnStmt  :  T_RETURN {
				$$ = new ReturnStatement(new NullExpression());
				$$->level_number = global_symtab->level;
				printf("ReturnStmt: T_RETURN\n");
			}
            |  T_RETURN Expr {
				$$ = new ReturnStatement($2);
				$$->level_number = global_symtab->level;
				printf("ReturnStmt: T_RETURN Expr\n");
			}
            ;
BreakStmt   :  T_BREAK {
				$$ = new BreakStatement();
				$$->level_number = global_symtab->level;
				printf("BreakStmt: T_BREAK\n");
			}
            ;
PrintStmt   :  T_PRINT '(' ExprPlus ')' {
				$$ = new PrintStatement($3);
				$$->level_number = global_symtab->level;
				printf("PrintStmt: T_PRINT '(' ExprPlus ')'\n");
			}
            ;
BoolExpr    :  Expr {
				$$ = $1;
				printf("BoolExpr: Expr\n");
			}
            ;
Expr        :  Constant {
				$$ = $1;
				printf("Expr: Constant\n");
			}
            |  LValue {
				$$ = $1;
				printf("Expr: LValue\n");
			}
            |  T_THIS {
				$$ = new ThisExpression();
				printf("Expr: T_THIS\n");
			}
            |  Call {
				$$ = $1;
				printf("Expr: Call\n");
			}
            |  '(' Expr ')' {
				$$ = $2;
				printf("Expr: '(' Expr ')'\n");
			}
            |  Expr '+' Expr {
				$$ = new BinaryExpression(ADD, $1, $3);
				printf("Expr: Expr '+' Expr\n");
			}
            |  Expr '-' Expr {
				$$ = new BinaryExpression(SUB, $1, $3);
				printf("Expr: Expr '-' Expr\n");
			}
            |  Expr '*' Expr {
				$$ = new BinaryExpression(MUL, $1, $3);
				printf("Expr: Expr '*' Expr\n");
			}
            |  Expr '/' Expr {
				$$ = new BinaryExpression(DIV, $1, $3);
				printf("Expr: Expr '/' Expr\n");
			}
            |  Expr '%' Expr {
				$$ = new BinaryExpression(MOD, $1, $3);
				printf("Expr: Expr '%%' Expr\n");
			}
            |  '-' Expr {
				$$ = new UnaryExpression(UMINUS, $2);
				printf("Expr: '-' Expr\n");
			}
            |  Expr '<' Expr {
				$$ = new BinaryExpression(LT, $1, $3);
				printf("Expr: Expr '<' Expr\n");
			}
            |  Expr T_LET Expr {
				$$ = new BinaryExpression(LE, $1, $3);
				printf("Expr: Expr T_LET Expr\n");
			}
            |  Expr '>' Expr {
				$$ = new BinaryExpression(GT, $1, $3);
				printf("Expr: Expr '>' Expr\n");
			}
            |  Expr T_HET Expr {
				$$ = new BinaryExpression(GE, $1, $3);
				printf("Expr: Expr T_HET Expr\n");
			}
            |  Expr T_EQU Expr {
				$$ = new BinaryExpression(EQ, $1, $3);
				printf("Expr: Expr T_EQU Expr\n");
			}
            |  Expr T_UEQU Expr {
				$$ = new BinaryExpression(NEQ, $1, $3);
				printf("Expr: Expr T_UEQU Expr\n");
			}
            |  Expr T_AND Expr {
				$$ = new BinaryExpression(AND, $1, $3);
				printf("Expr: Expr T_AND Expr\n");
			}
            |  Expr T_OR Expr {
				$$ = new BinaryExpression(OR, $1, $3);
				printf("Expr: Expr T_OR Expr\n");
			}
            |  '!' Expr {
				$$ = new UnaryExpression(NOT, $2);
				printf("Expr: '!' Expr\n");
			}
            |  T_READINTEGER '(' ')' {
				$$ = new ReadIntegerExpression();
				printf("Expr: T_READINTEGER '(' ')'\n");
			}
            |  T_READLINE '(' ')' {
				$$ = new ReadLineExpression();
				printf("Expr:  T_READLINE '(' ')'\n");
			}
            |  T_NEW T_IDENTIFIER '(' ')' {
				bool current;
				Entity* entity = global_symtab->find_entity($2, CLASS_ENTITY, &current);
				ClassEntity* classEntity = dynamic_cast<ClassEntity *>(entity);
				if (!classEntity){
					yyerror("Undeclared class");
					printf("  Undeclared class name: %s\n", $2);
				}
				$$ = new NewInstance($2, classEntity);
				/*$$ = new NewInstance($2);*/
				printf("Expr: T_NEW T_IDENTIFIER '(' ')'\n");
			}
            |  T_NEW Type '[' Expr ']' {
				$$ = new NewArrayInstance($4, $2);
				printf("Expr: T_NEW Type '[' Expr ']'\n");
			}
            |  T_INSTANCEOF '(' Expr ',' T_IDENTIFIER ')' {
				$$ = new InstanceofExpr($3, $5);
				printf("Expr: T_INSTANCEOF '(' Expr ',' T_IDENTIFIER ')'\n");
			}
            |  '(' T_CLASS T_IDENTIFIER ')' Expr {
				$$ = new TranslateExpr($3, $5);
				printf("Expr: '(' T_CLASS T_IDENTIFIER ')' Expr\n");
			}
            ;
Constant    :  T_INTCONSTANT {
				$$ = new IntegerConstant($1);
				printf("Constant: T_INTCONSTANT\n");
			}
            |  T_DOUBLECONSTANT {
				$$ = new DoubleConstant($1);
				printf("Constant: T_DOUBLECONSTANT\n");
			}
            |  T_BOOLCONSTANT {
				$$ = new BooleanConstant($1);
				printf("Constant: T_BOOLCONSTANT\n");
			}
            |  T_STRINGCONSTANT {
				$$ = new StringConstant($1);
				printf("Constant: T_STRINGCONSTANT\n");
			}
            |  T_NULL {
				$$ = new NullConstant();
				printf("Constant: T_NULL\n");
			}
            ;
%%

/*void yyerror(const char *s)
{
	printf("\nError: (lineno: %d) %s encountered at %s\n", yylineno, s, yytext);
}

int main(){
	yydebug = 0;
    yyparse();
	cout << endl;
	for (auto it = toplevel->begin(); it != toplevel->end(); ++it){
		(*it)->print();
	}
    return 0;
}*/
