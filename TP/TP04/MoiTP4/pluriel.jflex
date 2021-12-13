%%
%public
%class Lexer
%unicode
%standalone

%{

%}

invariable = [A-Za-z]*[xsz]
motAl = [A-Za-z]*al
exceptionAl = (bal)|(festival)|(carnaval)|(recital)
motAuEu = ([A-Za-z]*au)|([A-Za-z]*eu)
exceptionAuEu = (bleu)|(pneu)
motRestant = [A-Za-z]*[a-z]

%%
{invariable}	{System.out.println(yytext());}
{exceptionAl} 	{System.out.println(yytext()+"s");}
{motAl}		{System.out.println(yytext().substring(0, yytext().length()-2)+"aux");}
{exceptionAuEu}	{System.out.println(yytext());}
{motAuEu}	{System.out.println(yytext()+"x");}
{motRestant}	{System.out.println(yytext()+"s");}
[^]		{}

