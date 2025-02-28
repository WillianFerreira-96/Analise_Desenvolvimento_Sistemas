import javax.swing.*;

public class UsandoFila {
	
	public static void main(String[] args) {
		BibliotecaFila fila = new BibliotecaFila(10);
		int entrada = 0;
		
		for(int i = 1; i <= 10; i++) {
			entrada = Integer.parseInt(JOptionPane.showInputDialog("Digite um valor inteiro"));
			if(entrada % 2 == 0) {
				fila.enfileirar(entrada);
			}
		}
		
		fila.mostrarFila();
		System.exit(0);
	}

}
