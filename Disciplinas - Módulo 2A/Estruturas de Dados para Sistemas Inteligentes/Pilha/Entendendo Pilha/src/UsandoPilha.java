import javax.swing.*;

public class UsandoPilha {

	public static void main(String[] args) {
		BibliotecaPilha pilha = new BibliotecaPilha(5);
		int entrada;
		
		for(int i = 1; i<=5 ; i++) {
			entrada = Integer.parseInt(JOptionPane.showInputDialog("Digite um valor inteiro"));
			pilha.empilhar(entrada);
		}
		pilha.mostrarPilha();
		pilha.elementoTopo();
		System.exit(0);
	}
}
