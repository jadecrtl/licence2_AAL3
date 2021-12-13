%%
%standalone
digit = [0-9]
sign = "+" | "-"
num = {sign}?{digit}+
float = {digit}"."{digit}
wrong_number = {sign}{sign}+{digit}
%%
{float} {}
{wrong_number} {}
{num} {System.out.println("INTEGER: "+yytext());}
[^] {}
