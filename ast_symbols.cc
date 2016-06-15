#include <cstdio>
#include <cstring>
#include <iostream>
#include "ast_symbols.h"
#include "ast.h"

using namespace std;
extern EntityTable* global_symtab;

////////////////////////////////
//
//     Class Entitites
//
////////////////////////////////

ClassEntity::ClassEntity(const char* _name, ClassEntity* _superclass, list<Entity*>* _class_members)
	:	Entity::Entity(_name, CLASS_ENTITY),
		superclass(_superclass),
		class_members(_class_members)
{
	global_symtab->add_entity(this);
}

ClassEntity::~ClassEntity() {}

void ClassEntity::add_class_member(Entity* new_member) {
	class_members->push_back(new_member);
}

void ClassEntity::print()
{
	printf("%*s", level_number*2, "");
	cout << "class " << name;
	if (superclass != nullptr) {
		cout << " extends " << superclass->name;
	}
	printf(" {\n");
	printf("%*s", level_number*2, "");
	cout << "// Has " << class_members->size() << " members" << endl;
	for (auto it = class_members->begin(); it != class_members->end(); ++it) {
		(*it)->print();
	}
	printf("%*s", level_number*2, "");
	cout << "}" << endl;
}

////////////////////////////////
//
//     Function Entities
//
////////////////////////////////

FunctionEntity::FunctionEntity(const char* _name, Type* _return_type, list<Entity*>* _formal_params, Statement* _function_body)
	:	Entity::Entity(_name, FUNCTION_ENTITY),
		return_type(_return_type),
		formal_params(_formal_params),
		function_body(_function_body)
{
	global_symtab->add_entity(this);
}

FunctionEntity::~FunctionEntity() {}

void FunctionEntity::print()
{
	printf("%*s", level_number*2, "");
	cout << "function: ";
	return_type->print();
	cout << " " << name << "( " << endl;

	for (auto it = formal_params->begin(); it != formal_params->end(); ++it) {
		(*it)->print();
	}
	printf("%*s", level_number*2, "");
	cout << ")" << endl;
	function_body->print();
}

////////////////////////////////
//
//    Variable Entities
//
////////////////////////////////

VariableEntity::VariableEntity(const char* _name, Type* _type)
	:	Entity::Entity(_name, VARIABLE_ENTITY),
		type(_type)
{
	global_symtab->add_entity(this);
}


VariableEntity::~VariableEntity() {}

void VariableEntity::print()
{
	printf("%*s", level_number*2, "");
	cout << "variable: ";
	type->print();
	cout << " " << name << endl;
}
