%%
%public
%class Lexer 
%unicode
%standalone

%{

%}

majuscule = [A-Z][A-Za-z ]*[.?!] 


%{eof
  
%eof}

%%
{majuscule}	{System.out.println(yytext());}
[^]		{}
