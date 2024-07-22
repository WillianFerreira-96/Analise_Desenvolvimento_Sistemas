//ConvercaoDeTipoDeInfo.java
//C:\JAVA\04- ConvercaoDeTipoDeInfo
//C:\jdk-17.0.11\bin

public class ConvercaoDeTipoDeInfo{
	public static void main(String entrada[]){
		//Variáveis
		int numInt;
		double soma, numReal;
		char caracter;

		//Entrada de dados
		//Converção para Número Inteiro
		numInt = Integer.parseInt(entrada[0]);
		//Converção para Número Real
		numReal= Double.parseDouble(entrada[1]);
		//Converção para Caracter
		caracter = (entrada[2]).charAt(0);

		//Processamento
		soma = (double)numInt + numReal;

		//Saida de dados
		System.out.println((double)numInt + " " + caracter + " " + numReal + " = " + soma);		

		System.exit(0);
	}
}