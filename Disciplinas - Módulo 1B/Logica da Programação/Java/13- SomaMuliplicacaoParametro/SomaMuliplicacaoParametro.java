//SomaMuliplicacaoParametro
//C:\Users\willi\OneDrive\Documentos\Faculdade - Descomplica\Disciplinas - Módulo 1B\Logica da Programação\Java\13- SomaMuliplicacaoParametro
//C:\jdk-22.0.1\bin

import javax.swing.*;

public class SomaMuliplicacaoParametro{
	
	public static void somatoria(int valorVet[]){
		int resultSoma = 0;
		for(int cont = 0; cont< valorVet.length; cont++){
			resultSoma += valorVet[cont]; 
		}
		JOptionPane.showMessageDialog(null, "O Valor total da Somatoria de todos os numeros eh " + resultSoma);
	}

	public static void produtoria(int valorVet[]){	
		int resultMult = 1;
		for(int cont = 0; cont< valorVet.length; cont++){
			resultMult *= valorVet[cont]; 
		}
		JOptionPane.showMessageDialog(null, "O Valor total da Produtoria de todos os numeros eh " + resultMult);
	}
	

	public static void main(String[] args){	
		//Variaveis
		int valores[] = new int [5];

		//Entrada de dados
		for(int cont = 0; cont < valores.length; cont++){
			valores[cont] = Integer.parseInt(JOptionPane.showInputDialog("Digite o " + (cont + 1) + "o valor de 5:"));
		}
		
		somatoria(valores);
		produtoria(valores);

		System.exit(0);
	}
}








