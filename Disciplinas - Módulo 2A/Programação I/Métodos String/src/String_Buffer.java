public class String_Buffer {

	public static void main(String[] args) {
		//Obs: É "safe tread", ou seja, essa String só pode ser acessada pelo seu proprio processo.
		
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
