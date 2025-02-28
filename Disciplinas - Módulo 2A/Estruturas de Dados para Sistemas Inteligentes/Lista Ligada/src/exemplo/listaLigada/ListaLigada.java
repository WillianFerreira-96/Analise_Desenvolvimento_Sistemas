package exemplo.listaLigada;
public class ListaLigada {
	No primeiro, ultimo;
	
	ListaLigada(){
		primeiro = null;
		ultimo = null;
	}
	
	public No buscarNo(int elemento) {
		int i = 1;
		No noTemp = primeiro;
		
		while(noTemp != null) {
			if(noTemp.elemento == elemento) {
				System.out.println("No " + noTemp.elemento + " posição " + i);
				return noTemp;
			}
			i++;
			noTemp = noTemp.prox;
		}
		
		return null;
	}
	
	public boolean listaVazia() {
		if(primeiro == null && ultimo == null) {
			return true;
		}else {
			return false;
		}
	}
	
	public void destruir() {
		primeiro = null;
		ultimo = null;
	}
	
	public int contarNos() {
		int tamanho = 0;
		No noTemp = primeiro;
		
		while(noTemp != null) {
			tamanho += 1;
			noTemp = noTemp.prox;
		}
		
		return tamanho;
	}
	
	public void mostrarLista() {
		int i = 1;
		No noTemp = primeiro;
		
		while(noTemp != null) {
			System.out.println("Elemento " + noTemp.elemento + " posição " +i);
			noTemp = noTemp.prox;
			i += 1;
		}	
	}
	
	public void elementoInicio() {
		if(! listaVazia()) {
			System.out.println("O primeiro elemento é " + primeiro.elemento);
		}else {
			System.out.println("Lista Ligada Vazia");
		}
	}
	
	public void elementoFinal() {
		if(! listaVazia()) {
			System.out.println("O Ultimo elemento é " + ultimo.elemento);
		}else {
			System.out.println("Lista Ligada Vazia");
		}
	}
	
	public void inserirInicio(No novoNo) {
		if(listaVazia()) {
			ultimo = novoNo;
		}else {
			novoNo.prox = primeiro;
		}
		primeiro = novoNo;
	}
	
	public void inserirMeio(No novoNo, int posicao) {
		No noTemp = primeiro;
		int posAux = 1;	
		
		if(posicao <= 1) {
			inserirInicio(novoNo);
		}else {
			while(posAux < (posicao - 1)) {
				noTemp = noTemp.prox;
				posAux = posAux + 1;
			}
			novoNo.prox = noTemp.prox;
			noTemp.prox = novoNo;
		}
	}
	
	public void inserirFinal(No novoNo) {
		if(listaVazia()) {
			primeiro = novoNo;
		}else {
			ultimo.prox = novoNo;
		}
		ultimo = novoNo;
	}
	
	public void remover(int elemento) {
		No noTemp = primeiro;
		No noAnt = null;
		
		
		if(primeiro.elemento == elemento) {
			primeiro = primeiro.prox;
		}else {
			while(noTemp != null && noTemp.elemento != elemento) {
				noAnt = noTemp;
				noTemp = noTemp.prox;
			}
			if(noTemp != null) {
				noAnt.prox = noTemp.prox;
			}
			if(noTemp == ultimo) {
				ultimo = noAnt;
			}
		}
	}
}
