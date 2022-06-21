%%
%public
%class Lexer
%unicode
%standalone

%{
public int count = 0;
%}

motContenantEetA = [a-z]*[a]+[a-z]*[e]+[a-z]* | [a-z]*[e]+[a-z]*[a]+[a-z]* 

%{eof
	System.out.println("nbr de mot contenant a la fois a et e est de  = "+ count);
%eof}

%%
{motContenantEetA}		{count++; System.out.println(yytext());}
[^] {}


