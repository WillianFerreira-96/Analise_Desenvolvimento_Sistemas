
public class Metodos_String {

	public static void main(String[] args) {
		String nome = "Willian Ferreira";
		
		System.out.println(nome);
		
		System.out.println(nome.length());
		System.out.println(nome.toLowerCase());
		System.out.println(nome.toUpperCase());
		System.out.println(nome.charAt(2));
		System.out.println(nome.isEmpty());
		System.out.println(nome.indexOf("an"));
		System.out.println(nome.contains("an"));
		System.out.println(nome.concat(" gomes"));
		System.out.println(nome.equals("wILliAn fErReIrA"));
		System.out.println(nome.equalsIgnoreCase("wILliAn fErReIrA"));
	}

}
