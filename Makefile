# Makefile for decaf

SHELL = /bin/bash

CXX = g++
CXXFLAGS = -g -Wno-deprecated --std=c++11
LEX = flex
LFLAGS = -p -8 -Ce
LIBS = -ly -lfl
YACC = bison
YFLAGS = -t -d -v -g
BIN = main

OBJECTS = ast.o ast_print.o ast_symbols.o symbols.o \
		decaf.tab.o decaf.yy.o

all: $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $(BIN) $^ $(LIBS)

decaf.tab.o: decaf.tab.c
	$(CXX) $(CXXFLAGS) -o $@ -c $^

decaf.tab.c: decaf.y
	$(YACC) $(YFLAGS) -o $@ $^

decaf.yy.o: decaf.yy.c
	$(CXX) $(CXXFLAGS) -o $@ -c $^

decaf.yy.c: decaf.l
	$(LEX) $(LFLAGS) -o $@ $^


.PHONY: clean
clean:
	-rm -f $(BIN) *.o
	-rm -f decaf.yy.c decaf.tab.c decaf.tab.h *.output *.dot
