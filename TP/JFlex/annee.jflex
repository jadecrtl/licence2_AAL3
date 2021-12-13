%%
%standalone
%class Lexer
%unicode
%public
%line
%column

annee = \d{4}
%%

{annee} {System.out.println("Ligne: "+yyline+" Position: "+yycolumn+ " Annee: "+yytext());}
[^] {}

