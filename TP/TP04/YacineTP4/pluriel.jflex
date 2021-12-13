%%
%public
%class Lexer
%unicode
%standalone

%{

%}

invariable = .*s | .*z | .*x
terminaison1 = .*al
sauf = festival | bal | carnaval | recital | bleu | pneu
terminaison2 = .*au | .*eu 

%{eof

%eof}

%%
{invariable}	{System.out.println(yytext());}
{sauf}		{System.out.println(yytext()+"s");}
{terminaison1}	{System.out.println(yytext().substring(0,yylength()-2)+"aux");}
{terminaison2}	{System.out.println(yytext()+"x");}
[a-z]+		{System.out.println(yytext()+"s");}

