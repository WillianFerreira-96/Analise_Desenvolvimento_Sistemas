import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Delete {

	public static void main(String[] args) {
		final String usuario = "root"; //final é uma "variável" constante
		final String senha = "root";
		final String url = "jdbc:mysql://localhost:3306/db_java";
		//Explicação url = "jdbc:nome_sdbg://endereco_web:porta/nome_banco-de-dados";
		final String sql = "DELETE FROM db_usuarios WHERE nome_usuario = ?";
		
		try {
			Connection conexao = DriverManager.getConnection(url, usuario, senha);
			
			PreparedStatement preparedStatement = conexao.prepareStatement(sql);
			preparedStatement.setString(1, "Paçoca");
			
			preparedStatement.executeUpdate();
			
			System.out.println("Delete Realizada com Sucesso");
			
		}catch(Exception exception){
			exception.printStackTrace();
			System.out.println("Erro no Delete com o Banco de Dados");
		}
		
	}

}
