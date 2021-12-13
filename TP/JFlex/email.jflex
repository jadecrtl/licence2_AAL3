%%

%standalone
%class Lexer
%unicode
%public


email = ([A-Za-z\d\.\-_]+)@([a-z\d-]+)\.([a-z]{2,8})(\.[a-z]{2,8})? 
//macroName = ([A-Za-z\d\.-]+
//macroDomain = ([a-z\d-]+)
//macroExtension = ([a-z]{2,8})
//macroAgain = (\.[a-z]{2,8})?


%%

{email} {System.out.println(yytext());}
[^] {}
