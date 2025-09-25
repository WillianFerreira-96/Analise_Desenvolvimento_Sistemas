import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Read {

	public static void main(String[] args) {
		final String usuario = "root"; //final é uma "variável" constante
		final String senha = "root";
		final String url = "jdbc:mysql://localhost:3306/db_java";
		//Explicação url = "jdbc:nome_sdbg://endereco_web:porta/nome_banco-de-dados";
		final String sql = "SELECT * FROM db_usuarios";
		
		try {
			Connection conexao = DriverManager.getConnection(url, usuario, senha);
			
			Statement statement = conexao.createStatement();
			
			ResultSet resultSet = statement.executeQuery(sql);
			
			while(resultSet.next()){
				int id = resultSet.getInt("id_usuario");
				String nome = resultSet.getString("nome_usuario");
				System.out.println("Id: "+ id +" - Nome: "+ nome);
			}
			
			System.out.println("Conexão Realizada com Sucesso");
			
		}catch(Exception exception){
			exception.printStackTrace();
			System.out.println("Erro na Conexão com o Banco de Dados");
		}
		
	}

}
