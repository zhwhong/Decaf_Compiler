flex decaf.l
bison -dvg decaf.y
gcc decaf.tab.c lex.yy.c -ly -lfl -o decaf
