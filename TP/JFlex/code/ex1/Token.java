// jetons, résultat de l'analyse lexicale

public class Token {
    // jeton simple : seulement un symbole 
    protected Sym symbol;
    
    public Token(Sym s) {
		symbol = s;
    }
    
    public Sym symbol() {
		return symbol;
    }
    
    public String toString(){
		return symbol.toString();
    }
}

class StringToken extends Token {
    // jeton StringToken, avec valeur de type string
    private String value;
    
    public StringToken(Sym c, String s) {
		super(c);
		value = s;
    }
    
    public String toString(){
		return symbol + "(" + value + ")";
    }
}

class IntToken extends Token {
    // jeton IntToken, avec valeur de type int 
    private int value;
    
    public IntToken(Sym c, int i) {
		super(c);
		value = i;
    }
    
    public String toString(){
		return symbol + "(" + value + ")";
    }
}
