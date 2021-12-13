SHELL=/bin/bash

all: Lexer.class Token.class Sym.class Test.class

Sym.class: Sym.java
	javac Sym.java

Token.class: Token.java
	javac Token.java

Lexer.class: Lexer.java
	javac Lexer.java

Test.class: Test.java
	javac Test.java

Lexer.java: arith.flex
	jflex arith.flex

clean:
	-rm -f *.class *.dot Lexer.java

veryclean: clean
	-rm *~
