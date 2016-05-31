#include <iostream>
#include "ast.h"

// Print method for IfStatement
void IfStatement::print() {
	cout << "if (";
	expr->print();
	cout << ")" << endl;
	thenpart->print();
	cout << "else" << endl;
	if (elsepart == NULL)
		cout << "empty" << endl;
	else
		elsepart->print();
}

// Print method for WhileStatement
void WhileStatement::print() {
	cout << "while (";
	expr->print();
	cout << ")" << endl;
	body->print();
}

// Print method for ForStatement
void ForStatement::print() {
	cout << "for (";
	if (init != NULL)
		init->print();
	// cout << ";";
	guard->print();
	cout << ";";
	if (update != NULL)
		update->print();
	cout << ")" << endl;
	body->print();
}

// Print method for ReturnStatement
void ReturnStatement::print() {
	cout << "return ";
	if (expr != NULL)
		expr->print();
	cout << ";" << endl;
}

// Print method for BlockStatement
void BlockStatement::print() {
	cout << "{" << endl;
	// for(auto it = decl_list->begin(); it != decl_list->end(); ++it)
	// 	(*it)->print();
	for(auto it = stmt_list->begin(); it != stmt_list->end(); ++it)
		(*it)->print();
	cout << "}" << endl;
}

// Print method for ExprStatement
void ExprStatement::print() {
	expr->print();
	cout << ";" << endl;
}


// Print method for PrintStatement
void PrintStatement::print() {
	cout << "Print(";
	for (auto it = exprs->begin(); it != exprs->end(); ++it){
		if (it == exprs->begin())
			(*it)->print();
		else {
			cout << ",";
			(*it)->print();
		}
	}
	cout << ");" << endl;
}

// Print method for DeclStatement
void DeclStatement::print() {
	// for(auto it = var_list->begin(); it != var_list->end();) {
	// 	if (it == var_list->begin())
	// 		(*it)->print();
	// 	else {
	// 		cout << ",";
	// 		(*it)->print();
	// 	}
	// }
	var_list->print();
}

// Print method for BreakStatement
void BreakStatement::print() {
	cout << "break;" << endl;
}

// Print method for AssignStatement
void AssignStatement::print() {
	lhs->print();
	cout << " = ";
	rhs->print();
	cout << ";";
}

void CallStatement::print() {
	exprs->print();
	cout << ";" << endl;
}

void NullStatement::print() {
	cout << "null";
}

// Print method for BinaryExpression
void BinaryExpression::print() {
	cout << "(";
	lhs->print();
	switch(binary_operator) {
		case ADD:    cout << " + "; break;
		case SUB:    cout << " - "; break;
		case MUL:    cout << " * "; break;
		case DIV:    cout << " / "; break;
		case MOD:    cout << " % "; break;
		case EQ:     cout << " == ";  break;
		case NEQ:    cout << " != "; break;
		case LT:     cout << " < ";  break;
		case LE:     cout << " <= "; break;
		case GT:     cout << " > ";  break;
		case GE:     cout << " >= "; break;
		case AND:    cout << " && "; break;
		case OR:     cout << " || ";  break;
	}
	rhs->print();
	cout << ")";
}

// Print method for AssignExpression
void AssignExpression::print() {
	lhs->print();
	cout << " = ";
	rhs->print();
}

// Print method for ArrayAccess
void ArrayAccess::print() {
	base->print();
	cout << "[";
	idx->print();
	cout << "]";
}

// Print method for MemberAccess
void MemberAccess::print() {
	if (base == NULL){
		cout << name;
	} else {
		base->print();
		cout << "." << name;
	}
}

// Print method for MethodInvocation
void FunctionInvocation::print() {
	if (base == NULL) {
		cout << name;
	} else {
		base->print();
		cout << "." << name;
	}
	cout << "( ";
	for(auto it = args->begin(); it != args->end(); ++it) {
		if (it == args->begin()){
			(*it)->print();
		} else {
			cout << ", ";
			(*it)->print();
		}
	}
	cout << ")";
}

// Print method for UnaryExpression
void UnaryExpression::print() {
	cout << "(";
	switch(unary_operator) {
		case NOT:    cout << " !"; break;
		case UMINUS: cout << " -"; break;
	}
	arg->print();
	cout << ")";
}

// Print method for NewArrayInstance
void NewArrayInstance::print() {
	cout << "new [";
	type->print();
	cout << ", ";
	len->print();
	cout << "]" << endl;
}

// Print method for NewInstance
void NewInstance::print() {
	cout << "new " << class_name;
}

void InstanceofExpr::print() {
	cout << "instanceof(" << exprs << "," << class_name << ")";
}

void TranslateExpr::print() {
	cout << "(class " << toType << ")" << exprs;
}

// Print method for ThisExpression
void ThisExpression::print() {
	cout << "this";
}

// Print method for ReadIntegerExpression
void ReadIntegerExpression::print() {
	cout << "ReadInteger()";
}

// Print method for ReadLineExpression
void ReadLineExpression::print() {
	cout << "ReadLine()";
}

// Print method for IdExpression
void IdExpression::print() {
	if (id != NULL)
		cout << id->name;
	else
		cout << "UndefinedID";
}

// Print method for NullExpression
void NullExpression::print() {
	cout << "null";
}

// Print method for IntegerConstant
void IntegerConstant::print() {
	cout << value;
}

// Print method for DoubleConstant
void DoubleConstant::print() {
	cout << value;
}

// Print method for BooleanConstant
void BooleanConstant::print() {
	cout << value;
}

// Print method for StringConstant
void StringConstant::print() {
	cout << "\"" << value << "\"";
}

// Print method for NullConstant
void NullConstant::print() {
	cout << "null";
}


// Print method for IntType
void IntType::print() {
	cout << "int";
}

// Print method for DoubleType
void DoubleType::print() {
	cout << "double";
}

// Print method for BooleanType
void BooleanType::print() {
	cout << "boolean";
}

// Print method for StringType
void StringType::print() {
	cout << "string";
}

// Print method for VoidType
void VoidType::print() {
	cout << "void";
}

// Print method for ClassType
void ClassType::print() {
	cout << name;
}

// Print method for InstanceType
void InstanceType::print() {
	classtype->print();
}

// Print method for ErrorType
void ErrorType::print() {
	cout << "error";
}

// Print method for ArrayType
void ArrayType::print() {
	elementtype->print();
	cout << "[]";
}

// Print method for UniverseType
void UniverseType::print() {
	cout << "Universe";
}

// Print method for Universe
void NullType::print() {
	cout << "Null";
}
