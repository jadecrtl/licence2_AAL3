%%

%public
%class Lexer
%type Token
%unicode

%{
  int intbuff=0;
  private String chop(String s) {
      // envoie s sans son dernier caractère
      return(s.substring(0,s.length()-1));
  }
  private int expo(int base, int ex) {
      // envoie (base * 10**ex)
    int result=base;
    for(int i = 1; i<=ex; i++) {
      result=result*10;
    }
    return result;
}     
%}

EspaceChar = [ \n\r\f\t]
Ch         = [0-9]
Le         = [a-zA-Z]

%state EXPONENT

%%
	
<YYINITIAL> {
  {Ch}+		        {return new IntToken(Sym.INT,Integer.parseInt(yytext()));}
  {Le}({Le}|{Ch})*  {return new StringToken(Sym.IDENT,yytext());}
  "("	            {return new Token(Sym.PARG);}
  ")"		        {return new Token(Sym.PARD);}
  "*"		        {return new Token(Sym.MULT);}
  "+"		        {return new Token(Sym.PLUS);}
  {EspaceChar}+	    {}
  {Ch}+ "e"         {intbuff=Integer.parseInt(chop(yytext()));
		             yybegin(EXPONENT);}
}

<EXPONENT> {
  {Ch}+      {yybegin(YYINITIAL);
  	          return new IntToken(Sym.INT,
			                      expo(intbuff,Integer.parseInt(yytext())));}
}
