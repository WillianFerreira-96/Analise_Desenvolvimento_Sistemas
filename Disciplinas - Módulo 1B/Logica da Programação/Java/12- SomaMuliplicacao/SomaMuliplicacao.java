//SomaMuliplicacao
//C:\Users\willi\OneDrive\Documentos\Faculdade - Descomplica\Disciplinas - Módulo 1B\Logica da Programação\Java\12- SomaMuliplicacao
//C:\jdk-22.0.1\bin

import javax.swing.*;

public class SomaMuliplicacao{
	public static void somatoria(){	
		//Variaveis	
		int resultSoma = 0;
		int valores[] = new int [5];

		//Entrada de dados
		for(int cont = 0; cont < 5; cont++){
			valores[cont] = Integer.parseInt(JOptionPane.showInputDialog("Digite o " + (cont + 1) + "o valor de 5:"));
		}
	
		//Processamento de Dados
		for(int cont = 0; cont < valores.length; cont++){
			resultSoma += valores[cont]; 
		}

		//Saida de dados
		JOptionPane.showMessageDialog(null, "O Valor total da Somatoria de todos os numeros eh " + resultSoma);
	}

	public static void produtoria(){
		//Variaveis
		int resultMult = 1;
		int valores[] = new int [5];

		//Entrada de dados
		for(int cont = 0; cont < 5; cont++){
			valores[cont] = Integer.parseInt(JOptionPane.showInputDialog("Digite o " + (cont + 1) + "o valor de 5:"));
		}

		//Processamento de Dados
		for(int cont = 0; cont < valores.length; cont++){
			resultMult *= valores[cont];
		}
		
		//Saida de dados
		JOptionPane.showMessageDialog(null, "O Valor total da Produtoria de todos os numeros eh " + resultMult);
	}

	public static void main(String[] args){	
		somatoria();
		produtoria();
		System.exit(0);
	}
}