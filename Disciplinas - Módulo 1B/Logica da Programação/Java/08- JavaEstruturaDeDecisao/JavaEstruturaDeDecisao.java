//JavaEstruturaDeDecisao.java
//C:\Users\willi\OneDrive\Documentos\Faculdade - Descomplica\Disciplinas - Módulo 1B\Logica da Programação\Java\08- JavaEstruturaDeDecisao
//C:\jdk-22.0.1\bin

//Bibliotecas
import javax.swing.*;

public class JavaEstruturaDeDecisao{
	public static void main(String[] Will){
	//Variaveis
	int num;
	char op;
	String msg, msgEntr;

	//Entrada de dados
	msg = "";
	msgEntr = "Digite 1 para Par/Impar\nDigite 2 para Positivo/Negativo";
	num = Integer.parseInt(JOptionPane.showInputDialog("Digite um numero inteiro:"));
	op = JOptionPane.showInputDialog(msgEntr).charAt(0);

	//Processamento
	switch(op){
		case '1':{
			if(num % 2 == 0 ){
				msg = num + " eh PAR.";
			}else{
				msg = num + " eh IMPAR.";
			}
		}
		break;

		case '2':{
			if(num > 0 ){
				msg = num + " eh POSITIVO.";
			}else{
				msg = num + " eh NEGATIVO.";
			}
		}
		break;
		default: JOptionPane.showMessageDialog(null, "Opcao invalida, calculos nao realizados!");
		
	}

	//Saida de dados
	if(op == '1'|| op =='2'){
		JOptionPane.showMessageDialog(null, msg);
	}
	System.exit(0);
	}
}