%%
%standalone

%public
%class Lexer
%unicode
%standalone

%{
public int count = 0;
public int total = 0;
%}
signe = "+"|"-"
chiffre = [0-9]
entier = {signe}?{chiffre}+

%{eof
        System.out.println("nbre de entiers = "+ count);
        System.out.println("Total: "+total);
        System.out.println("Moyenne: "+(total/count));
%eof}

%%
{entier} {	System.out.println(yytext());
                count++;
                total+=Integer.parseInt(yytext());
          }
[^]           {}
