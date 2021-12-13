%%
%public
%class Lexer  //générera le fichier Lexer.java
%unicode
%standalone

%{

%}

suite = [aeiouyAEIOUY]?([b-df-hj-np-tv-xzB-DF-HJ-NP-TV-XZ][aeiouyAEIOUY])*[b-df-hj-np-tv-xzB-DF-HJ-NP-TV-XZ]?


%{eof
  
%eof}

%%
{suite}	{System.out.println(yytext());}
[^]		{}
