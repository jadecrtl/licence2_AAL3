%%
%standalone
%class Lexer
%public
%unicode
%state ARTICLE
%state NOM
%state verbe
%state pronom

article = (Le) | (le) | (La) | (la)
pronom = (Je)  | (Tu) | (Il) | (Elle) 
verbe_premier = [A-Za-z]+er

%{
	public String s = "";
%}

%{eof 

	System.out.println(s);	

%eof}
%%
<YYINITIAL> {
	{article} {yybegin(ARTICLE);}
	[^] {}
}

<ARTICLE> {
	{article} {s+=yytext()+"s";} 
	[^] {}
}

