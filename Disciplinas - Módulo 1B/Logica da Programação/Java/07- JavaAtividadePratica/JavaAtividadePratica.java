//JavaAtividadePratica.java
//C:\JAVA\07- JavaAtividadePratica
//C:\jdk-17.0.11\bin

import javax.swing.*;

public class JavaAtividadePratica{
	public static void main(String[] Will){
		//Variaveis	
		int a, b;
		double quociente, potencia;
		String txt;

		//Entrada de dados
		a = Integer.parseInt(JOptionPane.showInputDialog("Digite o Primeiro Numero:"));
		b = Integer.parseInt(JOptionPane.showInputDialog("Digite o Segundo Numero:"));

		//Processamento
		quociente = (double)a / (double)b;
		potencia = Math.pow(a, b);

		//Saida de dados
		txt = "O Quociente de " + a + " dividido por " + b + " = " + quociente + "\n";
		txt = txt + "A Potencia de " + a + " elevado a " + b + " = " + potencia + "\n";
		JOptionPane.showMessageDialog(null, txt);
	System.exit(0);
	}
}