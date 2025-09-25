
public class ClassePai {

	public static void main(String[] args) {		
		try {
			ClasseFilho porZero = new ClasseFilho();
			System.out.println(porZero.Dividir());
			
		}catch(Exception exception) {
			System.out.println("Ocorreu uma exceção!");
			System.out.println(exception.getMessage());
		}
		
	}

}
