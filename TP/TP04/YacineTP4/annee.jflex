%%
%public
%class Lexer
%unicode
%standalone
%line
%column

%{
  
%}

annee = [1-9][0-9][0-9][0-9]

%{eof
  
%eof}

%%
{annee}		{System.out.println("Ligne: "+yyline+" Position: "+yycolumn+" Année: "+yytext());}
[^]		{}
