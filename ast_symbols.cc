#include <cstdio>
#include <cstring>
#include <iostream>
#include "ast_symbols.h"
#include "ast.h"

using namespace std;

////////////////////////////////
//
//     Class Entitites
//
////////////////////////////////

ClassEntity::ClassEntity(const char* _name, ClassEntity* _superclass, list<Entity*>* _interfaces, list<Entity*>* _class_members)
	:	Entity::Entity(_name, CLASS_ENTITY),
		superclass(_superclass),
		interfaces(_interfaces),
		class_members(_class_members) 
{}

ClassEntity::~ClassEntity() {}

void ClassEntity::add_class_member(Entity* new_member) {
	class_members->push_back(new_member);
}

void ClassEntity::print() 
{
	cout << "class " << name;
	if (superclass != NULL) {
		cout << " extends " << superclass->name;
	}
	cout << " {" << endl;
	cout << "// Has " << class_members->size() << " members" << endl;
	for (auto it = class_members->begin(); it != class_members->end(); ++it) {
		(*it)->print();
	}
	cout << "}" << endl;
}

////////////////////////////////
//
//     Interface Entitites
//
////////////////////////////////

InterfaceEntity::InterfaceEntity(const char* _name, list<Entity*>* _interface_members)
	:	Entity::Entity(_name, INTERFACE_ENTITY),
		interface_members(_interface_members) 
{}

InterfaceEntity::~InterfaceEntity() {}

void InterfaceEntity::add_interface_member(Entity* new_member) {
	interface_members->push_back(new_member);
}

void InterfaceEntity::print() 
{
	cout << "interface: " << name;
	cout << " {" << endl;
	cout << "// Has " << interface_members->size() << " members" << endl;
	for (auto it = interface_members->begin(); it != interface_members->end(); ++it) {
		(*it)->print();
		cout << endl;
	}
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
{}

FunctionEntity::~FunctionEntity() {}

void FunctionEntity::print() 
{
	cout << "function: ";
	return_type->print();
	cout << " " << name << "( ";
	
	for (auto it = formal_params->begin(); it != formal_params->end(); ++it) {
		if (it == formal_params->begin()){
			(*it)->print();
		} else {
			cout << ", ";
			(*it)->print();
		}
	}
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
{}


VariableEntity::~VariableEntity() {}

void VariableEntity::print() 
{
	cout << "variable: ";
	type->print();
	cout << " " << name << endl;
}
