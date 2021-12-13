%%
%standalone
%class Lexer
%state INCOMMENT
letter = [A-Za-z]

%%

<YYINITIAL> {
	{letter}+ {System.out.println("OUTCOMMENT: "+yytext());} 
	"/*" {yybegin(INCOMMENT);}
	[^] {} 
}

<INCOMMENT> {
	{letter}+ {System.out.println("INCOMMENT: "+yytext());}
	"*/" {yybegin(YYINITIAL);}
	[^] {} 
}  
