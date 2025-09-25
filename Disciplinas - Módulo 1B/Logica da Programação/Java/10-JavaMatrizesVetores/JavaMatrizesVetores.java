//JavaMatrizesVetores
//C:\Users\willi\OneDrive\Documentos\Faculdade - Descomplica\Disciplinas - Módulo 1B\Logica da Programação\Java\10-JavaMatrizesVetores
//C:\jdk-22.0.1\bin

//Bibliotecas
import javax.swing.*;

public class JavaMatrizesVetores{
	public static void main(String[] args){

		//Variaveis
		//Declaração de um Vetor de nome "vetor".
		int vetor[] = {2, 4, 6, 8, 10};
		//Declaração de uma Matriz de nome "matriz" e especificação do tamanho da mesma: [2] Linhas e [3] Colunas. 
		int matriz[][] = new int [2][3];
		String msg = "Vetor = ";
	
		//Vetor
		for(int cont = 0; cont < vetor.length; cont++){
			msg+= vetor[cont] + " ";
		}
		JOptionPane.showMessageDialog(null, msg);
	
		//Matriz
		msg = "Matriz = \n\n";
		for(int contV = 0; contV < matriz.length; contV++){
			for(int contH = 0; contH < matriz[0].length; contH++){
				matriz[contV][contH] = Integer.parseInt(JOptionPane.showInputDialog("Digite um numero inteiro para posicao " + contV + " e " + contH));
				msg+= matriz[contV][contH] + " ";
			}
			msg+="\n";
		}
	
		JOptionPane.showMessageDialog(null, msg);
	
	}
}
