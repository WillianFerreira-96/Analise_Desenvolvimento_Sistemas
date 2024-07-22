//JavaModularizacao
//C:\Users\willi\OneDrive\Documentos\Faculdade - Descomplica\Disciplinas - Módulo 1B\Logica da Programação\Java\11- JavaModularizacao
//C:\jdk-22.0.1\bin

import javax.swing.*;

public class JavaModularizacao{
	//OBS: As Variaveis Globais são declaradas dentro do class (fora dos procedimentos/funções).	

	//Modulacao
	public static void soma(){
		int n1 , n2;

		n1 = Integer.parseInt(JOptionPane.showInputDialog("Digite um numero:"));
		n2 = Integer.parseInt(JOptionPane.showInputDialog("Digite outro numero:"));

		JOptionPane.showMessageDialog(null, "A soma eh " + (n1+n2));
	}
		
	public static void subtracao(int x, int y){
		int s;

		s = x - y;
		JOptionPane.showMessageDialog(null, "A Diferenca eh " + s);
	}

	public static int produto(){
		int n1 , n2;

		n1 = Integer.parseInt(JOptionPane.showInputDialog("Digite um numero:"));
		n2 = Integer.parseInt(JOptionPane.showInputDialog("Digite outro numero:"));

		return (n1*n2);
	}
	
	public static double divisao(int a, int b){
		double d;
		d = (double)a / (double)b;
		
		return d;
	}

	public static void main(String[] args){
		int n1 , n2, s;
		double r;		

		soma();
		n1 = Integer.parseInt(JOptionPane.showInputDialog("Digite um numero:"));
		n2 = Integer.parseInt(JOptionPane.showInputDialog("Digite outro numero:"));
		subtracao(n1, n2);
		s = produto();
		JOptionPane.showMessageDialog(null, "O Produto eh "+ s);
		r = divisao(n1,n2);
		JOptionPane.showMessageDialog(null, "A Divisao eh "+ r);	
		System.exit(0);
	}
}