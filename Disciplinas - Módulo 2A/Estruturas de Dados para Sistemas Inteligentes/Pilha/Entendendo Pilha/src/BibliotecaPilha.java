public class BibliotecaPilha {
	
	int tamanho;
	int topo;
	int vetor [];
	
	BibliotecaPilha(int tamanho){
		this.topo = -1;
		this.tamanho = tamanho;
		this.vetor = new int[tamanho];
	}
	
	public boolean pilhaVazia() {
		if(this.topo == -1) {
			return true;
		}else {
			return false;
		}
	}
	
	public boolean pilhaCheia() {
		if(this.topo >= this.tamanho-1) {
			return true;
		}else {
			return false;
		}
	}

	public void empilhar(int elemento) {
		if(!pilhaCheia()) {
			this.topo += 1;
			this.vetor[this.topo] = elemento;
		}else {
			System.out.println("Pilha Cheia");
		}
	}

	public int desempilhar() {
		int desempilhado = 0;
		
		if(pilhaVazia()) {
			System.out.println("Pilha Vazia");
		}else {
			desempilhado = this.vetor[this.topo];
			this.topo -= 1;
		}
		return desempilhado;
	}
	
	public void elementoTopo() {
		if(this.topo >= 0) {
			System.out.println("O elemento do topo é " + this.vetor[this.topo]);
		}else {
			System.out.println("Pilha Vazia");
		}
	}
	
	public void mostrarPilha() {
		for(int i = this.topo; i >= 0; i--) {
			System.out.println("Elemento " + this.vetor[i] + " posição " + i + " da pilha");
		}
	}
	
}
