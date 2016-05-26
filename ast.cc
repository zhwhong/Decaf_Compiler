#include <iostream>
#include "ast.h"

extern int yylineno;

////////////////////////////////
//
//    IfStatement class
//
////////////////////////////////


IfStatement::IfStatement(Expression* _expr, Statement* _thenpart, Statement* _elsepart)
	:	expr(_expr),
		thenpart(_thenpart),
		elsepart(_elsepart)
{
    lineno = yylineno;
}

IfStatement::~IfStatement() {}

////////////////////////////////
//
//    WhileStatement class
//
////////////////////////////////

WhileStatement::WhileStatement(Expression* _expr, Statement* _body)
	:	expr(_expr),
		body(_body)
{
    lineno = yylineno;
}

WhileStatement::~WhileStatement() {}

////////////////////////////////
//
//    ForStatement class
//
////////////////////////////////

ForStatement::ForStatement(Expression* _init, Expression* _guard, Expression* _update, Statement* _body)
	:	init(_init),
		guard(_guard),
		update(_update),
		body(_body)
{
    lineno = yylineno;
}

ForStatement::~ForStatement() {}

////////////////////////////////
//
//    ReturnStatement class
//
////////////////////////////////

ReturnStatement::ReturnStatement(Expression* _expr)
	:	expr(_expr)
{
    lineno = yylineno;
}

ReturnStatement::~ReturnStatement() {}

////////////////////////////////
//
//    BlockStatement class
//
////////////////////////////////

BlockStatement::BlockStatement(list<Entity*>* _decl_list, list<Statement*>* _stmt_list)
	:	decl_list(_decl_list),
		stmt_list(_stmt_list)
{
    lineno = yylineno;
}

BlockStatement::~BlockStatement() {}


////////////////////////////////
//
//    DeclStatement class
//
////////////////////////////////

DeclStatement::DeclStatement(list<Entity*>* _var_list)
	:	var_list(_var_list)
{
    lineno = yylineno;
}

DeclStatement::~DeclStatement() {}


////////////////////////////////
//
//    ExprStatement class
//
////////////////////////////////

ExprStatement::ExprStatement(Expression* _expr)
	:	expr(_expr)
{
    lineno = yylineno;
}

ExprStatement::~ExprStatement() {}

////////////////////////////////
//
//    PrintStatement class
//
////////////////////////////////

PrintStatement::PrintStatement(list<Expression*>* _exprs)
	:	exprs(_exprs)
{
    lineno = yylineno;
}

PrintStatement::~PrintStatement() {}

////////////////////////////////
//
//    BreakStatement class
//
////////////////////////////////

BreakStatement::BreakStatement() {
    lineno = yylineno;
}

BreakStatement::~BreakStatement() {}

////////////////////////////////
//
//    BinaryExpression class
//
////////////////////////////////

BinaryExpression::BinaryExpression(BinaryOperator _binary_operator, Expression* _lhs, Expression* _rhs)
	:	binary_operator(_binary_operator),
		lhs(_lhs),
		rhs(_rhs)
{
    lineno = yylineno;
}

BinaryExpression::~BinaryExpression() {}


////////////////////////////////
//
//    AssignExpression class
//
////////////////////////////////

AssignExpression::AssignExpression(Expression* _lhs, Expression* _rhs)
	:	lhs(_lhs),
		rhs(_rhs)
{
    lineno = yylineno;
}

AssignExpression::~AssignExpression() {}


////////////////////////////////
//
//    ArrayAccess class
//
////////////////////////////////

ArrayAccess::ArrayAccess(Expression* _base, Expression* _idx)
	:	base(_base),
		idx(_idx)
{
    lineno = yylineno;
}

ArrayAccess::~ArrayAccess() {}

////////////////////////////////
//
//    MemberAccess class
//
////////////////////////////////

MemberAccess::MemberAccess(Expression* _base, char* _name)
	:	base(_base),
		name(_name)
{
    lineno = yylineno;
}

MemberAccess::~MemberAccess() {}

////////////////////////////////
//
//    FunctionInvocation class
//
////////////////////////////////

FunctionInvocation::FunctionInvocation(Expression* _base, char* _name, list<Expression*>* _args)
	:	base(_base),
		name(_name),
		args(_args)
{
    lineno = yylineno;
}

FunctionInvocation::~FunctionInvocation() {}

////////////////////////////////
//
//    UnaryExpression class
//
////////////////////////////////

UnaryExpression::UnaryExpression(UnaryOperator _unary_operator, Expression* _arg)
	:	unary_operator(_unary_operator),
		arg(_arg)
{
    lineno = yylineno;
}

UnaryExpression::~UnaryExpression() {}

////////////////////////////////
//
//    NewArrayInstance class
//
////////////////////////////////

NewArrayInstance::NewArrayInstance(Expression* _len, Type* _type)
	:	len(_len),
		type(_type)
{
    lineno = yylineno;
}

NewArrayInstance::~NewArrayInstance() {}

////////////////////////////////
//
//    NewInstance class
//
////////////////////////////////

NewInstance::NewInstance(char* _class_name)
  : class_name(_class_name)
{
    lineno = yylineno;
}

NewInstance::~NewInstance() {}


////////////////////////////////
//
//    ThisExpression class
//
////////////////////////////////

ThisExpression::ThisExpression() {
    lineno = yylineno;
}

ThisExpression::~ThisExpression() {}

////////////////////////////////
//
//    ReadIntegerExpression class
//
////////////////////////////////

ReadIntegerExpression::ReadIntegerExpression() {
    lineno = yylineno;
}

ReadIntegerExpression::~ReadIntegerExpression() {}

////////////////////////////////
//
//    ReadLineExpression class
//
////////////////////////////////

ReadLineExpression::ReadLineExpression() {
    lineno = yylineno;
}

ReadLineExpression::~ReadLineExpression() {}


////////////////////////////////
//
//    IdExpression class
//
////////////////////////////////

IdExpression::IdExpression(Entity* _id)
	:	id(_id)
{
    lineno = yylineno;
}

IdExpression::~IdExpression() {}


////////////////////////////////
//
//    NullExpression class
//
////////////////////////////////

NullExpression::NullExpression()
{
    lineno = yylineno;
}

NullExpression::~NullExpression() {}

////////////////////////////////
//
//    IntegerConstant class
//
////////////////////////////////

IntegerConstant::IntegerConstant(int _value)
	:	value(_value)
{
    lineno = yylineno;
}

IntegerConstant::~IntegerConstant() {}

////////////////////////////////
//
//    DoubleConstant class
//
////////////////////////////////

DoubleConstant::DoubleConstant(double _value)
	:	value(_value)
{
    lineno = yylineno;
}

DoubleConstant::~DoubleConstant() {}

////////////////////////////////
//
//    BooleanConstant class
//
////////////////////////////////

BooleanConstant::BooleanConstant(bool _value)
	:	value(_value)
{
    lineno = yylineno;
}

BooleanConstant::~BooleanConstant() {}

////////////////////////////////
//
//    StringConstant class
//
////////////////////////////////

StringConstant::StringConstant(char* _value)
	:	value(_value)
{
    lineno = yylineno;
}

StringConstant::~StringConstant() {}

////////////////////////////////
//
//    NullConstant class
//
////////////////////////////////

NullConstant::NullConstant()
{
    lineno = yylineno;
}

NullConstant::~NullConstant() {}


////////////////////////////////
//
//    IntType class
//
////////////////////////////////

IntType::IntType() {
	kind = INT_TYPE;
}

IntType::~IntType() {}

////////////////////////////////
//
//    DoubleType class
//
////////////////////////////////

DoubleType::DoubleType() {
	kind = DOUBLE_TYPE;
}

DoubleType::~DoubleType() {}


////////////////////////////////
//
//    BooleanType class
//
////////////////////////////////

BooleanType::BooleanType() {
	kind = BOOL_TYPE;
}

BooleanType::~BooleanType() {}

////////////////////////////////
//
//    StringType class
//
////////////////////////////////

StringType::StringType() {
	kind = STRING_TYPE;
}

StringType::~StringType() {}

////////////////////////////////
//
//    VoidType class
//
////////////////////////////////

VoidType::VoidType() {
	kind = VOID_TYPE;
}

VoidType::~VoidType() {}


////////////////////////////////
//
//    ClassType class
//
////////////////////////////////

ClassType::ClassType(char* _name)
	:	name(_name)
{
	kind = CLASS_TYPE;
}

ClassType::~ClassType() {}

////////////////////////////////
//
//    InstanceType class
//
////////////////////////////////

InstanceType::InstanceType(ClassEntity* _classtype)
	:	classtype(_classtype)
{
  kind = INSTANCE_TYPE;
}

InstanceType::~InstanceType() {}

////////////////////////////////
//
//    ErrorType class
//
////////////////////////////////

ErrorType::ErrorType() {
	kind = ERROR_TYPE;
}

ErrorType::~ErrorType() {}

////////////////////////////////
//
//    ArrayType class
//
////////////////////////////////

ArrayType::ArrayType(Type* _elementtype)
	:	elementtype(_elementtype)
{
	kind = ARRAY_TYPE;
}

ArrayType::~ArrayType() {}

////////////////////////////////
//
//    UniverseType class
//
////////////////////////////////

UniverseType::UniverseType() {
	kind = UNIVERSE_TYPE;
}

UniverseType::~UniverseType() {}


////////////////////////////////
//
//    NullType class
//
////////////////////////////////

NullType::NullType() {
	kind = NULL_TYPE;
}

NullType::~NullType() {}
