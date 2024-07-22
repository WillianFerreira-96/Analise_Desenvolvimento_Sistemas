//Tabuada.java
//C:\Users\willi\OneDrive\Documentos\Faculdade - Descomplica\Disciplinas - Módulo 1B\Logica da Programação\Java\09- JavaEstruturaDeRepeticao
//C:\jdk-22.0.1\bin

//Bibliotecas
import javax.swing.*;

public class Tabuada{	

	//Processamento e Saida de dados (1/3)
	//Estrutura de Repeticao FOR
	static void estruturaFOR(int num){
		int produto;
		String msg = "";
		for(int cont = 0; cont <= 10; cont++){
		produto = num * cont;
		msg = msg + num + " x " + cont + " = " + produto + "\n";
		}
		JOptionPane.showMessageDialog(null, msg);
	}

	//Processamento e Saida de dados (2/3)
	//Estrutura de Repeticao WHILE
	static void estruturaWHILE(int num){
		int cont, produto;
		String msg = "";
		cont = 0;
		while(cont<=10){
			produto = num * cont;
			msg = msg + num + " x " + cont + " = " + produto + "\n";
			cont++;	
		}
		JOptionPane.showMessageDialog(null, msg);		
	}

	//Processamento e Saida de dados (3/3)
	//Estrutura de Repeticao DO/WHILE
	static void estruturaDO_WHILE(int num){
		int cont, produto;
		String msg = "";
		cont = 0;
		do{
			produto = num * cont;
			msg = msg + num + " x " + cont + " = " + produto + "\n";
			cont++;	
		}while(cont<11);
		JOptionPane.showMessageDialog(null, msg);
	}


	public static void main(String[] args){
		
		//Entrada de dados
		int num1, num2, num3;
		num1 = Integer.parseInt(JOptionPane.showInputDialog("Digite o numero da Tabuada:"));
		estruturaFOR(num1);
		num2 = Integer.parseInt(JOptionPane.showInputDialog("Digite outro numero da Tabuada:"));
		estruturaWHILE(num2);
		num3 = Integer.parseInt(JOptionPane.showInputDialog("Digite mais um numero da Tabuada:"));
		estruturaDO_WHILE(num3);		

	} 
}