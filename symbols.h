#ifndef SYMBOLS_H
#define SYMBOLS_H

#include <cstring>
#include <list>
//#include <ext/hash_map>
//#include <unordered_map>
#include <map>

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
	Entity* same_name;
	Entity* same_scope;
	int level_number;
	int entity_number;

	int lineno;
};

struct eqstr {
	bool operator()(const char* const& s1, const char* const& s2) const {
		return strcmp(s1, s2) == 0;
	}
};

struct cmpstr {
	bool operator()(const char* const& s1, const char* const& s2) const {
		return strcmp(s1, s2) < 0;
	}
};

class EntityTable{
public:
	EntityTable();
	virtual ~EntityTable();

	//API:
    virtual Entity* find_entity(const char *name, Kind kind, bool *current);
    virtual void add_entity(Entity* entity);

    virtual void enter_block();
    virtual void leave_block();

    virtual list<Entity*> defined_in_current_scope();
    virtual void print_symbols_in_scope();

    int level;
    list<Entity*> scope_stack;

	//hash_map< const char *, Entity*, eqstr > name_table_;
	//unordered_map<const char*, Entity*, hash<const char*>, eqstr> name_table;
	map<const char*, Entity*, cmpstr> name_table;

    void print_name_table_entries();
};

#endif // SYMBOLS_H
