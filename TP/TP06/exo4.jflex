%%
%public
%class Lexer
%unicode
%standalone

%{

%}

%{eof
	
%eof}

%%

[^] {System.out.print(yytext());}


