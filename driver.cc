#include <cstdio>
#include <iostream>
#include <list>
#include "ast.h"

#ifdef NULL
#undef NULL
#define NULL (void *)0
#endif

using namespace std;

extern "C"
{
	int yyparse(void);
	int yylex(void);
	int yywrap();
}
void yyerror(const char *s);

extern EntityTable* global_symtab;
extern list<Entity*>* toplevel;
extern ClassEntity* objectclass;

void init_typechecker();

int main(int argc, char const *argv[])
{
	freopen("input.txt", "r", stdin);
	//global_symtab->print_name_table_entries();
	yyparse();
	cout << endl;
	for (auto it = toplevel->begin(); it != toplevel->end(); ++it){
		(*it)->print();
	}
/* 	global_symtab->print_name_table_entries(); */
	printf("\n\n");
	init_typechecker();
	auto it = toplevel->begin();
	auto end = toplevel->end();
	for (; it != end; ++it){
		if ((*it)->kind == FUNCTION_ENTITY){
			FunctionEntity* fe = dynamic_cast<FunctionEntity*>(*it);
			fe->typecheck();
		} else if ((*it)->kind == CLASS_ENTITY){
			ClassEntity* ce = dynamic_cast<ClassEntity*>(*it);
			ce->typecheck();
		}
	}
	return 0;
}
