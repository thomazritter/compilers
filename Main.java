
import java.io.*;
import java.util.List;

public class Main {
    public static void main(String[] args) throws Exception {
        if (args.length == 0) {
            System.out.println("Erro: envie o arquivo novamente.");
            return;
        }

        FileReader fileReader = new FileReader(args[0]);

        fooliLexer lexer = new fooliLexer(fileReader);

        parser p = new parser(lexer);

        List<NodeTac> TACList = p.TACList;

        List<SimbolosTable> tabelaSimbolos = p.tabelaSimbolos;

        try {
            p.parse();
            System.out.println("Parse concluído com sucesso.");

            System.out.println("Código Intermediário (TAC):");
            for (NodeTac tac : TACList) {
                System.out.println(tac);
            }

            System.out.println("Tabela de simbolos:");
            for (SimbolosTable simbolo : tabelaSimbolos) {
                System.out.println(simbolo);
            }

        } catch (Exception e) {
            System.err.println("Erro durante a análise: " + e.getMessage());
            e.printStackTrace();
        }
  }
}