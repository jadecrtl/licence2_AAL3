%%
%type Token
EspaceChar = [ \n\r\f\t]
Letter     = [a-zA-Z]
%state INCOMMENT
%%
<YYINITIAL> {
  {Letter}+     {return token(Sym.IDENT,yytext());}
  {EspaceChar}  {}
  "/*"          {yybegin(INCOMMENT);}
}
<INCOMMENT> {
  "*/"   {yybegin(YYINITIAL);}
  .	 {}
}
