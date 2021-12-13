%%
%public
%class Lexer
%unicode
%standalone

%{
  public int count = 0;
  public double somme = 0;
%}

flottant = -?[0-9]*\.?[0-9]+

%{eof
  System.out.println("nombre de flottants = "+count);
  System.out.println("somme des flottants = "+somme);
%eof}

%%
{flottant}	{count++; somme+=Double.parseDouble(yytext());}
[^]		{}
