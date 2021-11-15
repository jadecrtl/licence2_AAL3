%%
%public
%class Lexer
%unicode
%standalone

%{
public int count = 0;
%}

chiffre = [0-9]

%{eof
	System.out.println("nbre de chiffres = "+ count);
%eof}

%%
{chiffre}     {count++;}
[^]           {}
