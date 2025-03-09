package conexa.java.jdbc.mysql;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConexaoBD {

	public static void main(String[] args) {
		final String usuario = "root"; //final é uma "variável" constante
		final String senha = "root";
		final String url = "jdbc:mysql://localhost:3306/db_java";
		//Explicação url = "jdbc:nome_sdbg://endereco_web:porta/nome_banco-de-dados";
		//final String driveDB = "";
		
		try {
			//Class.forName(driveDB);
			Connection conexao = DriverManager.getConnection(url, usuario, senha);
			
			System.out.println("Conexão Realizada com Sucesso");
			
		}catch(Exception exception){
			System.out.println("Erro na Conexão com o Banco de Dados");
		}
		
	}	
}
