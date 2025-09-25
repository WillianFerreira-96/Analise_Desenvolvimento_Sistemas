import javax.swing.*;

public class Função_recursiva {

	public static void main(String[] args) {
		int f, nro;
		
		nro = Integer.parseInt(JOptionPane.showInputDialog("Digite um valor que voçê deseja saber o fatorial"));
		if(nro < 0) {
			System.out.println("Valor inválido para cálculo de fatorial.");
			System.exit(0);
		}else {
			f = fatorial(nro);
			System.out.println("O fatorial de " + nro + " é " + f);
		}
		System.exit(0);
	}
	
	static int fatorial(int n) {
		int f;
		
		if(n == 0) {
			return 1;
		}else{
			f = n * fatorial(n-1);
			return f;
		}
	}
	
}
