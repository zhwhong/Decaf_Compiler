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
				list<Entity*>* _interfaces,
				list<Entity*>* _class_members);
	virtual ~ClassEntity();
	
	virtual void add_class_member(Entity* e);
	virtual void print();
	
	ClassEntity* superclass;
	list<Entity*>* interfaces;
	list<Entity*>* class_members;
};

class InterfaceEntity: public Entity {
public:
	InterfaceEntity(const char* _name,
				list<Entity*>* _interface_members);
	virtual ~InterfaceEntity();
	
	virtual void add_interface_member(Entity* e);
	virtual void print();
	
	list<Entity*>* interface_members;
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

	Type* return_type;
	list<Entity*>* formal_params;
	Statement* function_body;
};


#endif
