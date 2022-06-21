%%
%public
%class Lexer
%unicode
%standalone

%{

%}
prenom = "prenom"
nom = "nom"
%{eof
	
%eof}

%%
{prenom} {System.out.println("Jade");}
{nom}	{System.out.println("Cortial");}
[^] {}


