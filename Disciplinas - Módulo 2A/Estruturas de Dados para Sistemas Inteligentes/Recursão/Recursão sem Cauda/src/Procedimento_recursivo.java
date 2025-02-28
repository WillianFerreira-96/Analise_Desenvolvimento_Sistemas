import javax.swing.*;

public class Procedimento_recursivo {

	public static void main(String[] args) {
		int nro;
		
		nro = Integer.parseInt(JOptionPane.showInputDialog("Digite um valor que você deseja saber o fatorial"));
		
		if(nro < 0) {
			System.out.println("Valor invalido");
			System.exit(0);
		}else {
			fatorial(nro,nro,1);
		}
		System.exit(0);
	}

	public static void fatorial(int n, int x, int f) {
		if(x == 0 || x ==1) {
			System.out.println("O fatorial de " + n + " é " + f);
		}else {
			fatorial(n, x-1, f*x);
		}
	}
	
}
