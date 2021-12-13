%%
%public
%class Lexer  //générera le fichier Lexer.java
%unicode
%standalone

%{

%}

majuscule = [A-Z][A-Za-z]+


%{eof
  
%eof}

%%
{majuscule}	{System.out.println(yytext());}
[^]		{}
