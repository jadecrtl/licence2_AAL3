class Token {
    protected Sym symbol;
    public Token(Sym s) {
		symbol=s;
    }
	
    public Sym symbol() {
		return symbol;
    }
	
    public String toString() {
		return (symbol.toString());
    }
}

class StringToken extends Token {
    private String value;

    public StringToken(Sym c, String s) {
		super(c);
		value=s;
    }

	public String toString() {
		return (symbol.toString() + '(' + value + ')');
    }
}

class IntToken extends Token {
    private int value;

	public IntToken(Sym c, int i) {
		super(c);
		value=i;
    }

	public String toString() {
		return(symbol.toString() + '(' + value + ')');
    }
}
