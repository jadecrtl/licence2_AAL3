%%
%public
%class Lexer
%unicode
%standalone

%{

%}

mot = [A-Z][a-zA-Z]*
phrase = {mot}[^.?!]*[.?!]
voyelle = [aeiouyAEIOUY]
consonne = [zrtpqsdfghjklmwxcvbnZRTPQSDFGHJKLMWXCVBN]
mot1 = [A-Za-z]*{consonne}{consonne}[A-Za-z]*
mot2 = [A-Za-z]*{voyelle}{voyelle}[A-Za-z]*
mot3 = \w*
mot4 = {consonne}*{voyelle}{consonne}*
mot5 = [A-Za-z]+

%{eof

%eof}

%%

//{mot1} {}
//{mot2} {}
//{mot3} {System.out.println(yytext());}
{mot4} {System.out.println(yytext());}
{mot5} {}
[^]       {}
