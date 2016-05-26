#ifndef SYMBOLS_H
#define SYMBOLS_H

#include <cstring>
#include <list>
#include <ext/hash_map>

using namespace std;
using namespace __gnu_cxx;

enum Kind {
	CLASS_ENTITY,
	VARIABLE_ENTITY,
	FUNCTION_ENTITY
};

class Entity {
public:
	Entity();
	Entity(const char* _name, Kind _kind);
	virtual ~Entity();

	virtual void print();

	const char* name;
	Kind kind;
	int level_number;
	int entity_number;
};

#endif
