package arrayList.metodos;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;

public class ExemploArrayList {

	public static void main(String[] args) {
		ArrayList<Integer> ListaInt = new ArrayList<>();
		
		ListaInt.add(8); //.add() é um método do ArrayList que adiciona um elemento no final do "vetor"
		ListaInt.add(57);
		ListaInt.add(48);
		ListaInt.add(23);
		ListaInt.add(32);
		ListaInt.add(16);
		ListaInt.set(3, 700);//.set() adiciona um elemento na posição informada, Ex: .set(posicao_array, valor)
		ListaInt.remove(0);		
		
		Iterator<Integer> iterator = ListaInt.iterator();
		
		while(iterator.hasNext()) { //.hasNext() é um método do Iterator que pergunta se existe um proximo elemento na fila
			System.out.println(iterator.next()); //.next() mostra o próximo elemento da fila
		}
		
		Comparator<Integer> comparator = Collections.reverseOrder();
		
		Collections.sort(ListaInt, comparator);
		System.out.println("\n");
		for(Integer numero: ListaInt) {
			System.out.println(numero);
		}
		
	}
}
