//OperacoesMatematicasEConcatenacaoDeStrings.java
//C:\JAVA\05- OperacoesMatematicasEConcatenacaoDeStrings
//C:\jdk-17.0.11\bin

public class OperacoesMatematicasEConcatenacaoDeStrings{
	public static void main(String entrada[]){
		int n1, n2, mod, div;
		double raiz, pot;
		String msg;

		//Entrada de Dados
		n1 = Integer.parseInt(entrada[0]);
		n2 = Integer.parseInt(entrada[1]);

		//Processamento
		//mod(%) é o resto da divisão
		mod = n1 % n2;
		//O "(int)" antes da variavel garante que apenas o número inteiro seja armazenado
		div = (int)n1 / (int)n2;
		//Raiz Quadrada = Math.sqrt()
		raiz = Math.sqrt(n1);
		//Potencia = Math.pow(<Número base>, <Expoente>)
		pot = Math.pow(n1, n2);

		//Saida de Dados
		//Concatenação de Strings
		msg = "n1 = " + n1 + "\n" + "n2 = " + n2 + "\n";
		msg = msg + "resto da divisao de " + n1 + " por " + n2 + " = " + mod + "\n"; 
		msg = msg + "quociente da divisao de " + n1 + " por " + n2 + " = " + div + "\n";
		msg = msg + "raiz quadrada de " + n1 + " = " + raiz + "\n";
		msg = msg + "potencia de " + n1 + " elevado a " + n2 + " = " + pot + "\n";
		System.out.println(msg);
		System.exit(0);
  
	}
}