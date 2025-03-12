import java.util.Scanner;

public class Conta_divisao {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		int dividendo = scanner.nextInt();
		int divisor = scanner.nextInt();
		
		try {
			if(divisor <= 0) {
				//O "throw" força uma exceção.
				throw new DivisaoPorZeroException();
			}else {
				int quociente = dividendo / divisor;
			System.out.println("Resultado: " + quociente);
			}			
		}catch(DivisaoPorZeroException erro){
			System.out.println("Erro! " + erro.getMessage());
		}finally {
			System.out.println("-------------------------------------");
		}
	}

}
