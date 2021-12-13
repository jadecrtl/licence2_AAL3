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
cv = ({consonne}{voyelle})
vc = ({voyelle}{consonne})
mot2 = {cv}+|{vc}+
mot3 = [a-zA-Z]+
mot4 = {consonne}*{voyelle}{consonne}*



%{eof

%eof}

%%
{mot4}     {System.out.println(yytext());}
#{mot2}     {System.out.println(yytext());}
{mot3}	  {}
#{phrase}  {System.out.println(yytext());}

[^]           {}

