#ifndef AST_SYMBOLS_H
#define AST_SYMBOLS_H

#include <list>
#include "symbols.h"

using namespace std;
using namespace __gnu_cxx;

class Statement;
class Type;

class ClassEntity: public Entity {
public:
	ClassEntity(const char* _name,
				ClassEntity* _superclass,
				list<Entity*>* _class_members);
	virtual ~ClassEntity();

	virtual void add_class_member(Entity* e);
	virtual void print();
	virtual void typecheck();

	ClassEntity* superclass;
	list<Entity*>* class_members;
};

class VariableEntity: public Entity {
public:
	VariableEntity(	const char* _name,
					Type* _type);
	virtual ~VariableEntity();

	virtual void print();

	Type* type;
};

class FunctionEntity: public Entity {
public:
	FunctionEntity(const char* _name,
				 Type* _return_type,
				 list<Entity*>* _formal_params,
				 Statement* _function_body);
	virtual ~FunctionEntity();

	virtual void print();
	virtual void typecheck();

	Type* return_type;
	list<Entity*>* formal_params;
	Statement* function_body;
};


#endif
