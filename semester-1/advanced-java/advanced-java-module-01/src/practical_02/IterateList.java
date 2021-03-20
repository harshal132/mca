package practical_02;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Scanner;

/*Write a Java program to create List containing list of items of type String and use for-
--each loop to print the items of the list.
*/

/*
Add elements to the array list
al.add("F");
al.add(1, "A2");
*/

/* Remove elements from the array list
al.remove("F");
al.remove(2);
*/
public class IterateList {
	
	public static void main(String[] args) {
		String input;
		int count;
		Scanner sc = new Scanner(System.in);
		// create an array list
		List<String> list = new ArrayList<String>();
		System.out.println("Initial size of list: " + list.size());
		// add elements to the array list
		System.out.println("Please provide the number of elements: ");
		count=sc.nextInt();
		sc.nextLine();
		System.out.println("Enter Values:");
		for(int i=0;i<count;i++) {
			input=sc.nextLine();
			list.add(input);
		}
		sc.close();
		System.out.println("Size of list after adding elements: " + list.size());
		
		//different methods to reverse list elements
		showListWithForEach(list);
		showListWithIterator(list);	
		reverseIterator(list);
		reverseLoop(list);
		reverseWithCollection(list);
	}

	private static void reverseWithCollection(List<?> list) {
		System.out.println("Displaying Elements in Reverse Order With Collection class");
		Collections.reverse(list);
		for (Object item : list) {
		    System.out.println(item.toString());
		}
		Collections.reverse(list);
	}

	private static void reverseLoop(List<?> list) {
		System.out.println("Displaying Elements in Reverse Order With Loop");
		for (int i = list.size(); i-- > 0; ) {
		    System.out.println(list.get(i).toString());
		}
	}

	private static void reverseIterator(List<?> list) {
		System.out.println("Displaying Elements in Reverse Order With Iterator");
		ListIterator<?> listIterator = list.listIterator(list.size());
		while (listIterator.hasPrevious()) {
		    System.out.println(listIterator.previous().toString());
		}
	}

	private static void showListWithIterator(List<?> list) {
		Iterator<?> it = list.iterator();
		System.out.println("Displaying Elements with Iterator");
		while(it.hasNext()) {
			  System.out.println(it.next().toString());
		}
	}

	private static void showListWithForEach(List<?> list) {
		System.out.println("Displaying Elements with ForEach Loop");
		for (Object o: list) {
			System.out.println(o.toString());
		}
	}

}
