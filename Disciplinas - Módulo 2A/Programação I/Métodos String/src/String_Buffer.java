public class String_Buffer {

	public static void main(String[] args) {
		//Obs: � "safe tread", ou seja, essa String s� pode ser acessada pelo seu proprio processo.
		
		String nome = "Willian";
		String sobrenome = "Ferreira";
		String nomeComBuffer;
		
		StringBuffer buffer = new StringBuffer();
		
		buffer.append(nome);
		buffer.append(sobrenome);
		
		nomeComBuffer = buffer.toString();
		
		System.out.println(nomeComBuffer);
		

	}

}
