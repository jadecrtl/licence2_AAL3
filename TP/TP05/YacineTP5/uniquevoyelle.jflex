%%
%public
%class Lexer  //générera le fichier Lexer.java
%unicode
%standalone

%{

%}

voyelle = [b-df-hj-np-tv-xzB-DF-HJ-NP-TV-XZ]*[aeiouyAEIOUY][b-df-hj-np-tv-xzB-DF-HJ-NP-TV-XZ]* 


%{eof
  
%eof}

%%
{voyelle}	{System.out.println(yytext());}
[^]		{}
