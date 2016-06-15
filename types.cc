#include "ast.h"

bool Type::isSubtypeOf(Type *t){
	// judge if this type is a subtype of type t
	// error_type not implemented, avoid it
	if ((this->kind == ERROR_TYPE) || (t->kind == ERROR_TYPE)){
		return true;
	}
	// universe type returns true
	// everything is a subtype of universe type
	if (t->kind == UNIVERSE_TYPE){
		return true;
	}
	// null type is a subtype of any instance type
	if ((this->kind == NULL_TYPE) && (t->kind == INSTANCE_TYPE)){
		return true;
	}
	
	ClassEntity* e1, * e2;
	switch (this->kind){
		case CLASS_TYPE:
			if (t->kind != CLASS_TYPE){
				return false;
			}
			e1 = ((ClassType*)this)->classtype;
			e2 = ((ClassType*)t)->classtype;
			while (e1 != nullptr && e1 != e2){
				e1 = e1->superclass;
			}
			return e1 != nullptr;
			break;
		case INSTANCE_TYPE:
			if (t->kind != INSTANCE_TYPE){
				return false;
			}
			e1 = ((InstanceType*)this)->classtype;
			e2 = ((InstanceType*)t)->classtype;
			while (e1 != nullptr && e1 != e2){
				e1 = e1->superclass;
			}
			return e1 != nullptr;
			break;
		case ARRAY_TYPE:
			if (t->kind != ARRAY_TYPE){
				return false;
			}
			return (((ArrayType*)this)->elementtype)->isSubtypeOf(((ArrayType*)t)->elementtype);
			break;
		default:
			// for any other types, type matches if kind equals
			return this->kind == t->kind;
	}
	return false;
}
