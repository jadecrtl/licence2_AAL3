%%
%public
%class Lexer
%unicode
%standalone

%{
public int count = 0;
public int total = 0;
%}

chiffre = [0-9]

%{eof
	System.out.println("nbre de chiffres = "+ count);
	System.out.println("Total: "+total);
	System.out.println("Moyenne: "+(total/count));
%eof}

%%
{chiffre} {
		count++;
		total+=Integer.parseInt(yytext());
	  }
[^]           {}
