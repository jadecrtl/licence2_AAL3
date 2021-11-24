%%
%public
%class Lexer
%unicode
%standalone

%{
public int count = 0;
public double nombre = 0;
%}

chiffre = -?[0-9]*\.?[0-9]+

%{eof
	System.out.println("nbre de chiffres = "+ count);
        System.out.println(nombre);
	System.out.println(nombre/count);
%eof}

%%
{chiffre}     {count++;nombre+=Double.parseDouble(yytext());}
[^]           {}
