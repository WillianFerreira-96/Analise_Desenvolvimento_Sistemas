import java.util.Scanner;

public class Exception_Exemplo {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		int dividendo = scanner.nextInt();
		int divisor = scanner.nextInt();
		
		try {
			int quociente = dividendo / divisor;
			System.out.println("Resultado: " + quociente);
		}catch(Exception error){
			System.out.println("Causa: " + error.getCause());
			System.out.println("Mensagem: " + error.getMessage());
			System.out.println("Tipo de Exceção: " + error.getClass().getCanonicalName());
			System.out.println("Ops! Não é possível obter o resultado.");
		}

	}

}
