%%
%standalone
letter = [A-Za-z]
digit = [0-9]
id = {letter}({letter}|{digit}|"_")*
%%
{id} {System.out.println("Id: "+yytext());}
[^] {}

