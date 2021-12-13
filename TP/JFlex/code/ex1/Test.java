import java.io.*;

public class Test {
    public static void main(String[] args){
		try {
			// créer le reader utilisé par l'analyseur lexicale pour lire
			// le texte d'entrée
			BufferedReader reader =
				new BufferedReader(new FileReader(new File(args[0])));
			
			// créer l'analyseur lexical
			Lexer lexer = new Lexer(reader);
			
			// boucle: analyse lexicale du texte entier, et afficher
			// les jetons engendrés.
			Token t;
			do {
				t = lexer.yylex();
				if (t != null) {
					System.out.println(t);
				}
			} while (t != null);
		} catch (IOException e){
			System.err.println("IOException: " + e.getMessage());
		}
    }
}
