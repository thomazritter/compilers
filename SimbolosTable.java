
public class SimbolosTable {

    String tipo; 
    String nome; 

    public SimbolosTable(String tipo, String nome) {
        this.tipo = tipo;
        this.nome = nome;
    }

    @Override
    public String toString() {
        return tipo + " " + nome;   
    }
}