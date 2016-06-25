%{
    #include <stdio.h>
    int count = 0;
    FILE *fin;
%}

keyword     bool|break|class|else|extends|for|if|int|double|new|null|return|string|this|void|while|static|Print|ReadInteger|ReadLine|instanceof|true|false
identifier  [A-Za-z][A-Za-z0-9\_]*
dec_num     [1-9][0-9]*
hex_num     0[xX]([0-9A-Fa-f])+
oct_num     0([0-7])*
double_num  ([0-9])+"."([0-9])*([eE][-+]?[0-9]+)?
str         \"[^"\n]*\"
numbers     {dec_num}|{hex_num}|{oct_num}|{double_num}|{str}
comment1    (\/\/[^\n]*)
comment2    (\/\*((([^\*])|(\*[^\/]))*)\*\/)
comment     {comment1}|{comment2}
operator    \+|-|\*|\/|%|<|<=|>|>=|=|==|!=|&&|\|\||!|\.|\[|\]|\(|\)
whitespace  [ \n\t]+
delimiter   [,;\{\}]

%option yylineno
%option never-interactive

%%

{keyword}       {   count++;
                    printf("%d:\tlineno: %d\t(1,保留字,'%s')\n", count, yylineno, yytext);
                    fprintf(fin, "%d:\tlineno: %d\t(1,保留字,'%s')\n", count, yylineno, yytext);
                }
{identifier}    {   count++;
                    printf("%d:\tlineno: %d\t(2,标识符,'%s')\n", count, yylineno, yytext);
                    fprintf(fin, "%d:\tlineno: %d\t(2,标识符,'%s')\n", count, yylineno, yytext);
                }
{numbers}       {   count++;
                    printf("%d:\tlineno: %d\t(3,常量,'%s')\n", count, yylineno, yytext);
                    fprintf(fin, "%d:\tlineno: %d\t(3,常量,'%s')\n", count, yylineno, yytext);
                }
{operator}      {   count++;
                    printf("%d:\tlineno: %d\t(4,操作符,'%s')\n", count, yylineno, yytext);
                    fprintf(fin, "%d:\tlineno: %d\t(4,操作符,'%s')\n", count, yylineno, yytext);
                }
{delimiter}     {   count++;
                    printf("%d:\tlineno: %d\t(5,界符,'%s')\n", count, yylineno, yytext);
                    fprintf(fin, "%d:\tlineno: %d\t(5,界符,'%s')\n", count, yylineno, yytext);
                }
{comment}       {   count++;
                    printf("%d:\tlineno: %d\t(6,注释,'%s')\n", count, yylineno, yytext);
                    fprintf(fin, "%d:\tlineno: %d\t(6,注释,'%s')\n", count, yylineno, yytext);
                }
{whitespace}    {;}

%%

void main()
{
    printf("============================\n");
    printf("Decaf词法分析器输出类型说明:\n");
    printf("1：保留字\n");
    printf("2：标识符\n");
    printf("3：常  量\n");
    printf("4：操作符\n");
    printf("5：界  符\n");
    printf("6：注  释\n");
    printf("============================\n");
    if(!(fin=fopen("result.txt","w+"))){
        printf("Open file result.txt error!\n");
    }
    fprintf(fin,"============================\n");
    fprintf(fin,"Decaf词法分析器输出类型说明:\n");
    fprintf(fin,"1：保留字\n");
    fprintf(fin,"2：标识符\n");
    fprintf(fin,"3：常  量\n");
    fprintf(fin,"4：操作符\n");
    fprintf(fin,"5：界  符\n");
    fprintf(fin,"6：注  释\n");
    fprintf(fin,"============================\n");
    yyin = fopen("test.txt","r");
    yylex();
    fclose(yyin);
    fclose(fin);
}
int yywrap()
{
    return 1;
}
