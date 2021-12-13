jflex $1
javac Lexer.java
java Lexer $2
#cat $1 >> reponses_jflex.txt
#echo "-------$1-------" >> reponses_jflex.txt


#Quand on met pas en haut d'un fichier %class Lexer
#alors on peut marquer ça comme pour le shell d'execution :

#jflex $1
#javac Yylex.java
#java Yylex $2
#cat $1 >> reponses_jflex.txt
#echo "-------$1-------" >> reponses_jflex.txt
