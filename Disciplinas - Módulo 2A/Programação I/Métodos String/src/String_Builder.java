public class String_Builder {

	public static void main(String[] args) {
		//Obs: Não é "safe tread", ou seja varios processos podem ter acesso a String ao mesmo tempo.
		
		String nome = "Willian";
		String sobrenome = "Ferreira";
		String nomeComBuilder;
		
		StringBuilder builder = new StringBuilder();
		
		builder.append(nome);
		builder.append(sobrenome);
		
		nomeComBuilder = builder.toString();
		
		System.out.println(nomeComBuilder);
	}

}
