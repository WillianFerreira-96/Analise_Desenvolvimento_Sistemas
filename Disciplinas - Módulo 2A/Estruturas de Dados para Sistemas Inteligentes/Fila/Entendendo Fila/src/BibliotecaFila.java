import javax.swing.*;

public class BibliotecaFila {
	int tamanho;
	int total;
	int inicio;
	int fim;
	int vetor [];
	
	BibliotecaFila(int tamanho){
		this.inicio = 0;
		this.fim = 0;
		this.total = 0;
		this.tamanho = tamanho;
		this.vetor = new int[tamanho];
	}
	
	public boolean filaVazia() {
		if(this.total == 0) {
			return true;
		}else {
			return false;
		}
	}
	
	public boolean filaCheia() {
		if(this.total >= this.tamanho) {
			return true;
		}else {
			return false;
		}
	}

	public void enfileirar(int elemento) {
		if(!filaCheia()) {
			this.vetor[this.fim] = elemento;
			this.fim += 1;
			this.total += 1;
			if(this.fim >= this.tamanho) {
				this.fim = 0;
			}
		}else {
			System.out.println("Fila Cheia");
		}
	}

	public int desenfileirar() {
		int desenfileirado = 0;
		
		if(filaVazia()) {
			System.out.println("Fila Vazia");
		}else {
			desenfileirado = this.vetor[this.inicio];
			this.inicio +=1;
			this.total -= 1;
			if(this.inicio >= this.tamanho) {
				this.inicio = 0;
			}
		}
		return desenfileirado;
	}
	
	public void elementoInicio() {
		if(!filaVazia()) {
			System.out.println("O Primeiro elemento do topo é " + this.vetor[this.inicio]);
		}else {
			System.out.println("Fila Vazia");
		}
	}
	
	public void mostrarFila() {
		int aux;
				
		aux = inicio;
		for(int i = 1; i <= this.total; i++) {
			JOptionPane.showMessageDialog(null,"Elemento " + this.vetor[aux] + " Posição " + i);
			
			aux += 1;
			if(aux >= this.tamanho) {
				aux = 0;
			}
			
		}
	}
}
