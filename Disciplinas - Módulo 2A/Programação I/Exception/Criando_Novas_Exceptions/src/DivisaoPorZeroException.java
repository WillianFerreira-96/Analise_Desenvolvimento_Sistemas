
public class DivisaoPorZeroException extends Exception {
	public DivisaoPorZeroException() {
		super("O denominador não pode ser\ndividido por zero ou número negativo!");
	}
}