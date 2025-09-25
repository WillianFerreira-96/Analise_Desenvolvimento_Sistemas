import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Update {

	public static void main(String[] args) {
		final String usuario = "root"; //final é uma "variável" constante
		final String senha = "root";
		final String url = "jdbc:mysql://localhost:3306/db_java";
		//Explicação url = "jdbc:nome_sdbg://endereco_web:porta/nome_banco-de-dados";
		final String sql = "UPDATE db_usuarios SET nome_usuario=? WHERE idade_usuario=?";
		
		try {
			Connection conexao = DriverManager.getConnection(url, usuario, senha);
			
			PreparedStatement preparedStatement = conexao.prepareStatement(sql);
			preparedStatement.setString(1, "Paçoca");
			preparedStatement.setInt(2, 3);
			
			preparedStatement.executeUpdate();
			
			System.out.println("Update Realizada com Sucesso");
			
		}catch(Exception exception){
			exception.printStackTrace();
			System.out.println("Erro na Update com o Banco de Dados");
		}
		
	}

}
