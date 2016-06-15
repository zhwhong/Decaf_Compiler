#include "ast.h"

extern ClassEntity* objectclass;

ArrayType *array_type;
BooleanType *bool_type;
ClassType *class_type;
ErrorType *error_type;
DoubleType *double_type;
InstanceType *instance_type;
IntType *integer_type;
NullType *null_type;
StringType *string_type;
UniverseType *universe_type;
VoidType *void_type;

// maintain the state of the scope currently being type-checked
struct ScopeState {
	ClassEntity* class_in_scope;
	Kind kind_in_scope;
	Type* function_return_type;
} current_scope;

void init_typechecker(){
	bool_type = new BooleanType();
	error_type = new ErrorType();
	double_type = new DoubleType();
	integer_type = new IntType();
	null_type = new NullType();
	string_type = new StringType();
	universe_type = new UniverseType();
	void_type = new VoidType();

	current_scope.class_in_scope = objectclass;
	current_scope.kind_in_scope = CLASS_ENTITY;
	current_scope.function_return_type = error_type;
}


// method "typecheck" implementations
void ClassEntity::typecheck()
{
// 	printf("%*sclassentity\n", level_number*2, "");
	current_scope.class_in_scope = this;

	auto it = class_members->begin();
	auto end = class_members->end();
	for (; it != end; ++it){
		if ((*it)->kind == FUNCTION_ENTITY){
			FunctionEntity* fmbr = dynamic_cast<FunctionEntity*>(*it);
			fmbr->typecheck();
		}
	}
}

void FunctionEntity::typecheck()
{
// 	printf("%*sfunctionentity\n", level_number*2, "");
	current_scope.kind_in_scope = FUNCTION_ENTITY;
	current_scope.function_return_type = this->return_type;

	this->function_body->typecheck();
}

void IfStatement::typecheck()
{
// 	printf("%*sifstatement\n", level_number*2, "");
	Type* condition_type = this->expr->typeinfer();
	if (!(condition_type->isSubtypeOf(bool_type))){
		printf("error:%d expected bool type in if-statement condition\n", lineno);
		printf("  ");
		this->expr->print();
		printf("\n");
	}
	this->thenpart->typecheck();
	this->elsepart->typecheck();
}

void WhileStatement::typecheck()
{
// 	printf("%*swhilestatement\n", level_number*2, "");
	Type* condition_type = this->expr->typeinfer();
	if (!(condition_type->isSubtypeOf(bool_type))){
		printf("error:%d expected bool type in while-statement condition\n", lineno);
		printf("  ");
		this->expr->print();
		printf("\n");
	}
	this->body->typecheck();
}

void ForStatement::typecheck()
{
// 	printf("%*sforstatement\n", level_number*2, "");
	Type* guard_type = this->guard->typeinfer();
	if (!(guard_type->isSubtypeOf(bool_type))){
		printf("error:%d expected bool type in for-statement guard\n", lineno);
		printf("  ");
		this->guard->print();
		printf("\n");
	}
	//this->init->typeinfer();
	//this->update->typeinfer();
	this->init->typecheck();
	this->update->typecheck();
	this->body->typecheck();
}

// expression must be a subtype of the current function return type
// a return statement is valid only when in a function
void ReturnStatement::typecheck()
{
// 	printf("%*sreturnstatement\n", level_number*2, "");
	// only function has a return type
	if (current_scope.kind_in_scope != FUNCTION_ENTITY){
		printf("error:%d return statement should only be in a function\n", lineno);
		printf("  ");
		this->expr->print();
		printf("\n");
	}

	Type* type = (this->expr->typeinfer() != null_type) ? this->expr->typeinfer() : void_type;

	if (!(type->isSubtypeOf(current_scope.function_return_type))){
		printf("error:%d invalid return type\n", lineno);
		printf("  ");
		this->expr->print();
		printf("\n");
	}
}

void BlockStatement::typecheck()
{
// 	printf("%*sblockstatement\n", level_number*2, "");
	auto it = this->stmt_list->begin();
	auto end = this->stmt_list->end();

	for (; it != end; ++it){
		(*it)->typecheck();
	}
}

void ExprStatement::typecheck()
{
// 	printf("%*sexprstatement\n", level_number*2, "");
	this->expr->typeinfer();
}

void PrintStatement::typecheck()
{
// 	printf("%*sprintstatement\n", level_number*2, "");
	auto it = this->exprs->begin();
	auto end = this->exprs->end();

	for (; it != end; ++it){
		(*it)->typeinfer();
	}
}

void DeclStatement::typecheck() {}
void BreakStatement::typecheck() {}
void AssignStatement::typecheck() {}
void CallStatement::typecheck() {}
void NullStatement::typecheck() {}

// method "typeinfer" implementations
Type* BinaryExpression::typeinfer()
{
	Type* lhs_type = this->lhs->typeinfer();
	Type* rhs_type = this->rhs->typeinfer();

// 	this->print();
// 	printf("%p %p\n",lhs_type,rhs_type);
// 	fflush(stdout);

	switch (this->binary_operator){
		case ADD:
		case SUB:
		case MUL:
		case DIV:
			// both should be numeric (int or double)
			if (!(lhs_type->isSubtypeOf(integer_type)) &&
				!(lhs_type->isSubtypeOf(double_type))
			){
				printf("error:%d invalid operand type to binary expression\n", lineno);
				printf("  ");
				this->print();
				printf("\n");
				return error_type;
			}
			if (!(rhs_type->isSubtypeOf(integer_type)) &&
				!(rhs_type->isSubtypeOf(double_type))
			){
				printf("error:%d invalid operand type to binary expression\n", lineno);
				printf("  ");
				this->print();
				printf("\n");
				return error_type;
			}

			// return integer_type if both int, double_type if both double
			if (lhs_type->isSubtypeOf(integer_type) &&
				rhs_type->isSubtypeOf(integer_type)
			){
				return integer_type;
			}
			return double_type;
			break;
		case LT:
		case LE:
		case GT:
		case GE:
			// both should be numeric (int or double)
			if (!(lhs_type->isSubtypeOf(integer_type)) &&
				!(lhs_type->isSubtypeOf(double_type))
			){
				printf("error:%d invalid operand type to binary expression\n", lineno);
				printf("  ");
				this->print();
				printf("\n");
				return error_type;
			}
			if (!(rhs_type->isSubtypeOf(integer_type)) &&
				!(rhs_type->isSubtypeOf(double_type))
			){
				printf("error:%d invalid operand type to binary expression\n", lineno);
				printf("  ");
				this->print();
				printf("\n");
				return error_type;
			}
			return bool_type;
			break;
		case EQ:
		case NEQ:
			// both should be compatible with each other
			if (!(lhs_type->isSubtypeOf(rhs_type)) &&
				!(rhs_type->isSubtypeOf(lhs_type))
			){
				printf("error:%d invalid operand type to binary expression\n", lineno);
				printf("  ");
				this->print();
				printf("\n");
				return error_type;
			}
			return bool_type;
			break;
		case AND:
		case OR:
			if (!(lhs_type->isSubtypeOf(bool_type))){
				printf("error:%d invalid operand type ti binary expression\n", lineno);
				printf("  ");
				this->print();
				printf("\n");
				return error_type;
			}
			if (!(rhs_type->isSubtypeOf(bool_type))){
				printf("error:%d invalid operand type ti binary expression\n", lineno);
				printf("  ");
				this->print();
				printf("\n");
				return error_type;
			}
			return bool_type;
		default:
			printf("error:%d invalid operand type to binary expression\n", lineno);
			printf("  ");
			this->print();
			printf("\n");
			return error_type;
	}
}

Type* AssignExpression::typeinfer()
{
	Type* lhs_type = this->lhs->typeinfer();
	Type* rhs_type = this->rhs->typeinfer();

	// right hand side should a subtype of the left hand side
	if (!(rhs_type->isSubtypeOf(lhs_type))){
		printf("error:%d invalid operand type to assign expression\n", lineno);
		printf("  ");
		this->print();
		printf("\n");
		return error_type;
	}
	return rhs_type;
}

Type* ArrayAccess::typeinfer()
{
	Type* base_type = this->base->typeinfer();
	Type* index_type = this->idx->typeinfer();

	// the base of array access should be array type
	if (!(base_type->isSubtypeOf(array_type))){
		printf("error:%d expected an array type for base of array access\n", lineno);
		printf("  ");
		this->print();
		printf("\n");
		return error_type;
	}
	if (!(index_type->isSubtypeOf(integer_type))){
		printf("error:%d expected an array type for index of array access\n", lineno);
		printf("  ");
		this->print();
		printf("\n");
		return error_type;
	}
	return base_type;
}

Type* MemberAccess::typeinfer()
{
	ClassEntity* baseclass;
	Type* base_type = this->base->typeinfer();
	if (base_type->kind == INSTANCE_TYPE){
		InstanceType* instance_type = dynamic_cast<InstanceType*>(base_type);
		baseclass = instance_type->classtype;
	} else {
		printf("error:%d expected instance type in base expression\n", lineno);
		printf("  ");
		this->print();
		printf("\n");
		return error_type;
	}

	// search the entire class hierarchy
	for (; baseclass; baseclass = baseclass->superclass){
		auto it = baseclass->class_members->begin();
		auto end = baseclass->class_members->end();
		for (; it != end; ++it){
			if ((*it)->kind != VARIABLE_ENTITY){
				continue;
			}
			VariableEntity* ve = dynamic_cast<VariableEntity*>(*it);
			if (strcmp(this->name, ve->name) != 0){
				continue;
			}
			return ve->type;
		}
	}
	printf("error:%d member not defined\n", lineno);
	printf("  ");
	this->print();
	printf("\n");
	return error_type;
}

Type* FunctionInvocation::typeinfer()
{
	ClassEntity* baseclass;
	Type* base_type = this->base->typeinfer();
	if (base_type->kind == INSTANCE_TYPE){
		InstanceType* instance_type = dynamic_cast<InstanceType*>(base_type);
		baseclass = instance_type->classtype;
	} else {
		printf("error:%d expected instance type in base expression\n", lineno);
		printf("  ");
		this->print();
		printf("\n");
		return error_type;
	}

	// infer types of the arguments
	list<Type*>* arg_types = new list<Type*>();
	auto it = this->args->begin();
	auto end = this->args->end();
	for (; it != end; ++it){
		arg_types->push_back((*it)->typeinfer());
	}

	// search the entire class hierarchy
	for (; baseclass; baseclass = baseclass->superclass){
		auto it = baseclass->class_members->begin();
		auto end = baseclass->class_members->end();
		for (; it != end; ++it){
			if ((*it)->kind != FUNCTION_ENTITY){
				continue;
			}
			FunctionEntity* fe = dynamic_cast<FunctionEntity*>(*it);
			if (strcmp(this->name, fe->name) != 0){
				continue;
			}

			// found the function, now check the type compatibility
			auto it1 = arg_types->begin();
			auto it2 = fe->formal_params->begin();
			auto end2 = fe->formal_params->end();
			for (; it2 != end2; ++it1, ++it2){
				if ((*it2)->kind != VARIABLE_ENTITY){
					printf("error:%d expected variable for function parameters\n", lineno);
					printf("  ");
					this->print();
					printf("\n");
					return error_type;
				}

				VariableEntity* ve = dynamic_cast<VariableEntity*>((*it2));
				if (!(*it1)->isSubtypeOf(ve->type)){
					printf("error:%d arguments not compatible with parameters\n", lineno);
					printf("  ");
					this->print();
					printf("\n");
					return error_type;
				}
			}
			return fe->return_type;
		}
	}
	printf("error:%d function not found\n", lineno);
	printf("  ");
	this->print();
	printf("\n");
	return error_type;
}

Type* UnaryExpression::typeinfer()
{
	Type* arg_type = this->arg->typeinfer();
	switch (unary_operator){
		case NOT:
			// argument should be bool
			if (!(arg_type->isSubtypeOf(bool_type))){
				printf("error:%d invalid operand type to unaryexpression\n", lineno);
				printf("  ");
				this->print();
				printf("\n");
				return error_type;
			}
			return bool_type;
			break;
		case UMINUS:
			// argument should be numeric
			if (!(arg_type->isSubtypeOf(integer_type)) ||
				!(arg_type->isSubtypeOf(double_type))
			){
				printf("error:%d invalid operand type to unaryexpression\n", lineno);
				printf("  ");
				this->print();
				printf("\n");
				return error_type;
			}
			return arg_type;
			break;
		default:
			printf("error:%d invalid operand type to unaryexpression\n", lineno);
			printf("  ");
			this->print();
			printf("\n");
			return error_type;
	}
}

Type* NewArrayInstance::typeinfer()
{
	int dimension = this->type->dimension;
	Type* ret_type = this->type;
	for (int i = 0; i < dimension; ++i){
		ret_type = new ArrayType(ret_type);
	}
	return ret_type;
}

Type* NewInstance::typeinfer()
{
	return new InstanceType(classEntity);
}

Type* InstanceofExpr::typeinfer(){
	return null_type;
}

Type* TranslateExpr::typeinfer(){
	return null_type;
}

Type* ThisExpression::typeinfer()
{
	return new InstanceType(current_scope.class_in_scope);
}

Type* ReadIntegerExpression::typeinfer()
{
	return new IntType();
}

Type* ReadLineExpression::typeinfer()
{
	return new StringType();
}

Type* IdExpression::typeinfer()
{
	Entity* ident = this->id;
	if (ident->kind == VARIABLE_ENTITY){
		VariableEntity* ve = dynamic_cast<VariableEntity*>(ident);
		return ve->type;
	} else if (ident->kind == CLASS_ENTITY){
		ClassEntity* ce = dynamic_cast<ClassEntity*>(ident);
		return new ClassType(ce);
	} else {
		printf("error:%d expected a variable name or class name", lineno);
		printf("  ");
		this->print();
		printf("\n");
		return error_type;
	}
}

Type* NullExpression::typeinfer()
{
	return null_type;
}

Type* BooleanConstant::typeinfer()
{
	return bool_type;
}

Type* IntegerConstant::typeinfer()
{
	return integer_type;
}

Type* DoubleConstant::typeinfer()
{
	return double_type;
}

Type* StringConstant::typeinfer()
{
	return string_type;
}

Type* NullConstant::typeinfer()
{
	return null_type;
}
