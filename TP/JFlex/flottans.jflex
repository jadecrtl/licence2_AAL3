%%
%standalone

%public
%class Lexer
%unicode
%standalone

%{
public int count = 0;
public double total = 0;
%}
signe = "+"|"-"
chiffre = [0-9]
flottant = {signe}?{chiffre}*"."?{chiffre}+

%{eof
        System.out.println("nbre de flottant = "+ count);
        System.out.println("Total: "+total);
        System.out.println("Moyenne: "+(total/count));
%eof}

%%
{flottant} {      System.out.println(yytext());
                count++;
                total+=Double.parseDouble(yytext());
          }
[^]           {}
