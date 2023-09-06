

compiler: main.cpp grammar.tab.c lex.yy.c lexer.cpp base.cpp
	g++ -o compiler $^

grammar.tab.c grammar.tab.h: grammar.y
	bison -d grammar.y

lex.yy.c:lexer.l
	flex $^


clean:
	rm compiler grammar.tab.c grammar.tab.h lex.yy.c