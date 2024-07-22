//EntradaDeDadosInputCMD.java
//C:\JAVA\06- EntradaDeDadosInputCMD
//C:\jdk-17.0.11\bin

//Bibliotecas
//Biblioteca "SWING"
import javax.swing.*;

public class EntradaDeDadosInputCMD{
	public static void main(String[] args){

	//Variáveis
	int n1, n2 , mod;
	double raiz1, raiz2;
	String msg;
	
	//Entrada de dados
	n1 = Integer.parseInt(JOptionPane.showInputDialog("Digite um numero inteiro:"));
	n2 = Integer.parseInt(JOptionPane.showInputDialog("Digite outro numero inteiro:"));
	
	//Processamento 
	mod = n1 % n2;
	raiz1 = Math.sqrt(n1);
	raiz2 = Math.sqrt(n2);

	//Saida de dados
	msg = "Resto da divisao de " +n1+ " por " +n2+ " = " +mod+ "\n";
	msg = msg + "Raiz Quadrada de " +n1+ " = " +raiz1+ "\n";
	msg = msg + "Raiz Quadrada de" +n2+ " = " +raiz2+ "\n";
	JOptionPane.showMessageDialog(null, msg); 
	System.exit(0);
	}
}
