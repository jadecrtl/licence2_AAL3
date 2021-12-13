%%
%public
%class Lexer  //générera le fichier Lexer.java
%unicode
%standalone


%{
//éventuellement code java qui sera recopié au début de du lexer généré

    public int compteBlabla = 0;
    public int longTotalZ = 0;
    public int compteZ = 0;

%}

//définition d'expressions régulières

moustique = z+


%{eof
   //éventuellement code java qui sera recopié en fin du lexer généré

  System.out.println("\nnombre de blabla = "+ compteBlabla);
  System.out.println("\nnombre moyen de zzzz... = "+(longTotalZ/compteZ));
%eof}

%%

//les règles:

bla(bla)+      {System.out.println(yytext()+": "+compteBlabla++);}
{moustique}    {
    		System.out.println("il y a un moustique!");
		longTotalZ+= yylength();
		compteZ++;
	       }	
[^] {} 


