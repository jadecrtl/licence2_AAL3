%%
%standalone

%public
%class Lexer
%unicode


invariable = [A-Za-z]+[sxz]
motsAl = [A-Za-z]*al
exceptionsAl = (bal) | (carnaval) | (festival)
exceptionAuEu = (bleu) | (pneu)
motsAuEu = [A-Za-z]*(au|eu)
autresMots = [A-Za-z]+


%%

{invariable} {System.out.println(yytext());}
{exceptionsAl} {System.out.println(yytext()+"s");}
{motsAl} {System.out.println(yytext().substring(0, yytext().length()-2)+"aux");}
{exceptionAuEu} {}
{motsAuEu} {System.out.println(yytext()+"x");}
{autresMots} {System.out.println(yytext()+"s");}

[^] {}


