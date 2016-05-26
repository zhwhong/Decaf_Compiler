#ifndef AST_H
#define AST_H

#include <list>
#include "ast_symbols.h"

using namespace std;
using namespace __gnu_cxx;

typedef enum {
	ADD, SUB, MUL, DIV, MOD, EQ, NEQ, LT, LE, GT, GE, AND, OR
} BinaryOperator;

typedef enum {
	NOT, UMINUS
} UnaryOperator;

typedef enum {
	INT_TYPE, DOUBLE_TYPE, BOOL_TYPE, STRING_TYPE, VOID_TYPE,
	INSTANCE_TYPE, CLASS_TYPE, INTERFACE_TYPE, ARRAY_TYPE, ERROR_TYPE, 
	UNIVERSE_TYPE, NULL_TYPE
} TypeKind;

class Statement {
public:
	Statement() {}
	virtual ~Statement() {}
	virtual void print() = 0;

	int lineno;
};

class Expression {
public:
	Expression() {};
	virtual ~Expression() {};
	virtual void print() = 0;
// 	virtual Type* typeinfer() = 0;

	int lineno;
};

class Type {
public:
	Type() {};
	virtual ~Type() {};

	virtual void print() = 0;
// 	virtual bool isSubtypeOf(Type *t);

	TypeKind kind;
};

////////////////////////////////
//
//		 Statement classes
//
////////////////////////////////

class IfStatement : public Statement {
public:
	IfStatement(Expression* _expr, Statement* _thenpart, Statement* _elsepart);
	virtual ~IfStatement();

	void print();

	Expression* expr;
	Statement* thenpart;
	Statement* elsepart;
};


class WhileStatement : public Statement {
public:
	WhileStatement(Expression* _expr, Statement* _body);
	virtual ~WhileStatement();

	void print();

	Expression* expr;
	Statement* body;
};

class ForStatement : public Statement {
public:
	ForStatement(Expression* _init, Expression* _guard, Expression* _update, Statement* _body);
	virtual ~ForStatement();

	void print();

	Expression* init;
	Expression* guard;
	Expression* update;
	Statement* body;
};

class ReturnStatement : public Statement {
public:
	ReturnStatement(Expression* _expr);
	virtual ~ReturnStatement();

	void print();

	Expression* expr;
};


class BlockStatement : public Statement {
public:
	BlockStatement(list<Entity*>* _decl_list, list<Statement*>* _stmt_list);
	virtual ~BlockStatement();

	void print();

	list<Entity*>* decl_list;
	list<Statement*>* stmt_list;
};

// not used
class DeclStatement : public Statement {
public:
	DeclStatement(list<Entity*>* _var_list);
	virtual ~DeclStatement();

	void print();

	list<Entity*>* var_list;
};

class ExprStatement : public Statement {
public:
	ExprStatement(Expression* _expr);
	virtual ~ExprStatement();

	void print();

	Expression* expr;
};

class PrintStatement : public Statement {
public:
	PrintStatement(list<Expression*>* _exprs);
	virtual ~PrintStatement();

	void print();

	list<Expression*>* exprs;
};

class BreakStatement : public Statement {
	public:
		BreakStatement();
		virtual ~BreakStatement();
		void print();
};


////////////////////////////////
//
//		 Expression classes
//
////////////////////////////////

class BinaryExpression : public Expression {
public:
	BinaryExpression(BinaryOperator _binary_operator, Expression* _lhs, Expression* _rhs);
	virtual ~BinaryExpression();

	void print();

	BinaryOperator binary_operator;
	Expression* lhs;
	Expression* rhs;
};

class AssignExpression : public Expression {
public:
	AssignExpression(Expression* _lhs, Expression* _rhs);
	virtual ~AssignExpression();

	void print();

	Expression* lhs;
	Expression* rhs;
};

class ArrayAccess : public Expression {
public:
	ArrayAccess(Expression* _base, Expression* _idx);
	virtual ~ArrayAccess();

	void print();

	Expression* base;
	Expression* idx;
};

class MemberAccess : public Expression {
public:
	MemberAccess(Expression* _base, char* _name);
	virtual ~MemberAccess();

	void print();

	Expression* base;
	char* name;
};

class FunctionInvocation : public Expression {
public:
	FunctionInvocation(Expression* _base, char* _name, list<Expression*>* _args);
	virtual ~FunctionInvocation();

	void print();

	Expression* base;
	char* name;
	list<Expression*>* args;
};

class UnaryExpression : public Expression {
public:
	UnaryExpression(UnaryOperator _unary_operator, Expression* _arg);
	virtual ~UnaryExpression();

	void print();

	UnaryOperator unary_operator;
	Expression* arg;
};

class NewArrayInstance : public Expression {
public:
	NewArrayInstance(Expression* _len, Type* _type);
	virtual ~NewArrayInstance();

	void print();
	
	Expression* len;
	Type* type;
};


class NewInstance : public Expression {
public:
	NewInstance(char* _class_name);
	virtual ~NewInstance();

	void print();

	char* class_name;
};

class ThisExpression : public Expression {
public:
	ThisExpression();
	virtual ~ThisExpression();
	void print();
};

class ReadIntegerExpression : public Expression {
public:
	ReadIntegerExpression();
	virtual ~ReadIntegerExpression();
	void print();
};

class ReadLineExpression : public Expression {
public:
	ReadLineExpression();
	virtual ~ReadLineExpression();
	void print();
};

class IdExpression : public Expression {
public:
	IdExpression(Entity* _id);
	virtual ~IdExpression();

	void print();

	Entity* id;
};

class NullExpression : public Expression {
public:
	NullExpression();
	virtual ~NullExpression();
	void print();
};

////////////////////////////////
//
//			 Constant classes
//
////////////////////////////////

class IntegerConstant : public Expression {
public:
	IntegerConstant(int _value);
	virtual ~IntegerConstant();

	void print();

	int value;
};

class DoubleConstant : public Expression {
public:
	DoubleConstant(double _value);
	virtual ~DoubleConstant();

	void print();

	double value;
};

class BooleanConstant : public Expression {
public:
	BooleanConstant(bool _value);
	virtual ~BooleanConstant();

	void print();

	bool value;
};

class StringConstant : public Expression {
public:
	StringConstant(char* _value);
	virtual ~StringConstant();

	void print();

	char* value;
};

class NullConstant : public Expression {
public:
	NullConstant();
	virtual ~NullConstant();

	void print();
};

////////////////////////////////
//
//			 Type classes
//
////////////////////////////////

class IntType : public Type {
public:
	IntType();
	virtual ~IntType();
	void print();
};

class DoubleType : public Type {
	public:
		DoubleType();
		virtual ~DoubleType();
		void print();
};

class BooleanType : public Type {
	public:
		BooleanType();
		virtual ~BooleanType();
		void print();
};

class StringType : public Type {
	public:
		StringType();
		virtual ~StringType();
		void print();
};

class VoidType : public Type {
	public:
		VoidType();
		virtual ~VoidType();
		void print();
};

class ClassType : public Type {
	public:
		ClassType(char* _name);
		virtual ~ClassType();

		void print();

		char* name;
};

class InterfaceType : public Type {
	public:
		InterfaceType(char* _name);
		virtual ~InterfaceType();

		void print();

		char* name;
};

class InstanceType : public Type {
	public:
		InstanceType(ClassEntity* _classtype);
		virtual ~InstanceType();

		void print();

		ClassEntity* classtype;
};

class ErrorType : public Type {
	public:
		ErrorType();
		virtual ~ErrorType();
		void print();
};

class ArrayType : public Type {
	public:
		ArrayType(Type* _elementtype);
		virtual ~ArrayType();

		void print();

		Type* elementtype;
};

// UniverseType is the top-most in type hierarchy; 
// every type is in UniverseType
class UniverseType : public Type {
public:
	UniverseType();
	virtual ~UniverseType();
	void print();
};

// NullType is a bottom in type hierarchy; 
// it is in every class type 
class NullType : public Type {
public:
	NullType();
	virtual ~NullType();
	void print();
};

#endif
