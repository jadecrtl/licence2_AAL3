import java.io.*;

class Test {

    public static void main(String[] args) throws Exception {
		File input = new File(args[0]);
		Reader reader = new FileReader(input);
		Lexer lexer = new Lexer(reader);
		Token t;
		do {
			t=lexer.yylex();
			if (t != null) {
				System.out.println(t.toString());
			}
		} while (t != null);
    }
}
