package exemplo.listaLigada;
import javax.swing.*;
public class UsandoListaLigada {

	public static void main(String[] args) {
		ListaLigada lista = new ListaLigada();
		int num;
		
		for(int i = 1; i <= 10; i++) {
			num = Integer.parseInt(JOptionPane.showInputDialog("Digite um numero inteiro: "));
			if(num % 3 == 0) {
				lista.inserirFinal(new No(num));
			}
		}
		lista.mostrarLista();
		System.exit(0);
	}
	
}
