%%
%public
%class Lexer
%unicode
%standalone

%{
public int c = 0;
%}

motFiniE = [A-Z]?[a-z]*e
motFiniS = [A-Z]?[a-z]*s
motEOuS = {motFiniE} | {motFiniS}
%{eof
	System.out.println("nbr de mot finissant par e est de " + c);
%eof}

%%
{motEOuS}	{c++; System.out.println(yytext());}
[^] {}




