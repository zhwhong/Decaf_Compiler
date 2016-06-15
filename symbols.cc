#include <cstdio>
#include <cstring>
#include <iostream>
#include "symbols.h"

int entity_counter;

///////////////////////////////
//
//       Entity Class
//
///////////////////////////////

Entity::Entity(const char* _name, Kind _kind)
	:	name(_name),
		kind(_kind)
{
	same_name = nullptr;
	same_scope = nullptr;
	level_number = 0;
	entity_number = ++entity_counter;
}

Entity::~Entity() {}

void Entity::print(void) {
	printf("%s_%d", name, entity_number);
}

////////////////////////////////
//
// EntityTable class
//
//////////////////////////////////
EntityTable::EntityTable()
{
  entity_counter = 0;
  level = 0;
  scope_stack.push_front(nullptr);
}

EntityTable::~EntityTable() {}

void EntityTable::print_name_table_entries()
{
	for (auto it = name_table.begin(); it != name_table.end(); ++it){
		printf("   %*sKey: '%s', level_no: %d, entity_no: %d\n", ((*it).second)->level_number*2, "", (*it).first, ((*it).second)->level_number, ((*it).second)->entity_number);
	}
}

Entity* EntityTable::find_entity(const char *name, Kind kind, bool *current) {
// 	print_name_table_entries();
// 	print_symbols_in_scope();
	Entity* e = name_table[name];
// 	printf(" check '%s' in name_table, name_table.find('%s')=%p, name_table.end()=%p\n", name, name, name_table.find(name), name_table.end());
	if (name_table.find(name) != name_table.end()){
// 		printf(" '%s' exists\n", name);
		// name already exists, search through the same stack
		Entity* entity = name_table[name];
		while (entity != nullptr){
			if (entity->kind == kind){
				*current = (entity->level_number == level);
				return entity;
			} else {
				entity = entity->same_name;
			}
		}
	}
// 	printf(" '%s' not exists\n", name);
	// not found
	return nullptr;
}

void EntityTable::add_entity(Entity* entity){
// 	printf("before add '%s'\n", entity->name);
	if (name_table.find(entity->name) != name_table.end()){
// 		printf(" %s not nullptr\n", entity->name);
		entity->same_name = name_table[entity->name];
	} else {
// 		printf(" %s nullptr\n", entity->name);
		entity->same_name = nullptr;
	}

	name_table[entity->name] = entity;
// 	if (strcmp(entity->name, "a") == 0){
// 		printf(" thea=%p, entity=%p\n", thea, entity);
// 		thea = entity;
// 	}


	entity->same_scope = scope_stack.front();
	scope_stack.front() = entity;

	entity->level_number = level;
// 	printf("after  add %s\n", entity->name);

// 	print_name_table_entries();
// 	print_symbols_in_scope();

// 	printf("added '%s' to name_table, name_table.find('%s')=%p, name_table.end()=%p\n", entity->name, entity->name, name_table.find(entity->name), name_table.end());
}

void EntityTable::enter_block(void){
	scope_stack.push_front(nullptr);
	++level;
// 	printf(" Enter from level %d to %d\n", level-1, level);
}

void EntityTable::leave_block(void){
	if (scope_stack.empty()){
		return;
	}
	Entity* entity = scope_stack.front();
	// remove entity link in the current scope from the name_table
	while (entity != nullptr){
		Entity* next = entity->same_scope;
		name_table[entity->name] = entity->same_name;
		entity = next;
	}

	scope_stack.pop_front();
	--level;
// 	printf(" Left from level %d to %d\n", level+1, level);
}

list<Entity*> EntityTable::defined_in_current_scope(void){
	list<Entity*>* ret = new list<Entity*>();
	if (!scope_stack.empty()){
		Entity* entity = scope_stack.front();
		while (entity != nullptr){
			ret->push_front(entity);
			entity = entity->same_scope;
		}
	}
	return *ret;
}

void EntityTable::print_symbols_in_scope(void){
	int i = 0;
	printf("-------------- symbols in scope\n");
	for (auto it = scope_stack.rbegin(); it != scope_stack.rend(); ++it){
		printf("Level %d\n", i++);
		Entity* entity = *it;
		while (entity != nullptr){
			printf("%s_%d: %d ", entity->name, entity->entity_number, entity->kind);
			entity = entity->same_scope;
		}
		printf("\n--------------\n");
	}
}
