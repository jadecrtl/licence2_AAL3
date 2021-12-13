// partie code utilisateur : vide

%%
// partie options et déclarations
%public
%class Lexer
%unicode
%type Token	

EspaceChar = [ \n\r\f\t]
Ch         = [0-9]
Le         = [a-zA-Z]

%%
// partie règles lexicales
{Ch}+			  {return new IntToken(Sym.INT,Integer.parseInt(yytext()));}
{Le}({Le}|{Ch})*  {return new StringToken(Sym.IDENT,yytext());}
"("	              {return new Token(Sym.PARG);}
")"	              {return new Token(Sym.PARD);}
"*"	              {return new Token(Sym.MULT);}
"+"		          {return new Token(Sym.PLUS);}
{EspaceChar}+     {}
