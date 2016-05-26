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
	level_number = 0;
	entity_number = ++entity_counter;
}

Entity::~Entity() {}

void Entity::print(void) {
	printf("%s_%d", name, entity_number);
}
