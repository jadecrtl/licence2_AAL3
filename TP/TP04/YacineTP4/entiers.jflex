%%
%public
%class Lexer
%unicode
%standalone

%{
  public int count=0;
  public int somme=0;
%}

entier = -*[0-9]+

%{eof
  System.out.println("nombre d'entiers = "+count);
  System.out.println("somme des entiers = "+somme);
  System.out.println("moyenne des entiers = "+somme/count);
%eof}

%%
{entier}	{count++; somme += Integer.parseInt(yytext());}
[^]		{}
