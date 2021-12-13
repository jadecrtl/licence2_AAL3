%%
%standalone
%class Lexer
%public 
%unicode

exception_ou = (bijou) | (caillou) | (chou) | (joujou) | (genou) | (pou) | (hibou)
mots_fin_ou = [A-Za-z]*ou
exception_ail = (bail) | (travail) | (soupirail) | (email) | (vitrail) | (corail)
mots_fin_ail = [A-Za-z]*ail

mot_oeil = (oeil)
mot_ciel = (ciel)
autres_mots = [A-Za-z]+
%%
{exception_ou} {
			System.out.println(yytext()+"x");
		}
{mots_fin_ou} {
			System.out.println(yytext()+"s");
		}
{exception_ail} {	
			String mot = yytext();
			mot = mot.substring(0, mot.length()-2);
			System.out.println(mot+"ux");
		}

{mots_fin_ail} {
			System.out.println(yytext()+"s");
		}
{mot_oeil} 	{
			System.out.println("yeux");
		}
{mot_ciel} 	{
			System.out.println("cieux");
		}
{autres_mots} {
		System.out.println(yytext()+" s");
		}
[^] {} 
