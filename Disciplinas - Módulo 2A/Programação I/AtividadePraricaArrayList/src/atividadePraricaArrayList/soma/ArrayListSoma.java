package atividadePraricaArrayList.soma;

import javax.swing.*;
import java.util.ArrayList;
import java.util.Iterator;

public class ArrayListSoma {

	public static void main(String[] args) {
		
		ArrayList<Integer> ListaInt = new ArrayList<>();		
		int number, soma = 0;
		
		for(int i = 0 ; i < 5 ; i++) {
			 number = Integer.parseInt(JOptionPane.showInputDialog("Digite um numero inteiro: "));
			 ListaInt.add(number);
		}
		
		Iterator<Integer> iteratorList = ListaInt.iterator();
		
		while(iteratorList.hasNext()) { 
			int numbTemp = iteratorList.next();
			System.out.println(numbTemp);
			soma += numbTemp;
		}
		System.out.println("\nO Resultado da soma dos Números Digitados, é " + soma);
	}
}
