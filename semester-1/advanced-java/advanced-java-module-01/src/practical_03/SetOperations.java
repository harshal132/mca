package practical_03;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
/*
 * Assignments on Set Interface
	1. Write a Java program to create a Set containing list of items of type String and print
	the items in the list using Iterator interface. Also print the list in reverse/ backward
	direction.
	2. Write a Java program using Set interface containing list of items and perform the
	following operations:
		a. Add items in the set.
		b. Insert items of one set in to other set.
		c. Remove items from the set
		d. Search the specified item in the set
 */
import java.util.Scanner;
import java.util.Set;
import java.util.TreeSet;

public class SetOperations {
	static String input;
	static int count;
	static Scanner sc;
	public static void main(String[] args) {
		
		sc = new Scanner(System.in);
		Set<String> treeSet = new TreeSet<String>();
		Set<String> treeSetCopy = new TreeSet<String>();
		System.out.println("Initial size of set: " + treeSet.size());
		
		System.out.println("Please provide the number of elements: ");
		count=sc.nextInt();
		sc.nextLine();
		System.out.println("Enter Values:");
		for(int i=0;i<count;i++) {
			input=sc.nextLine();
			treeSet.add(input);
		}
		System.out.println("Size of set after adding elements: " + treeSet.size());
		
				
		treeSet = addItemsInSet(treeSet);
		treeSetCopy = insertValuesIntoAnotherSet(treeSet);
		
		System.out.println("Copied Content = "+treeSetCopy);
		
		treeSet = removeElement(treeSet);
		System.out.println("Content After Deleting Element = "+treeSet);
		
		searchElement(treeSet);
		
		showSetWithIterator(treeSet);
		reverseIterator(treeSet);
		convertToListThenDisplay(treeSet);
		sc.close();
	}
	
	private static void searchElement(Set<String> treeSet) {
		System.out.println("Enter Value To serach in Set");
		input = sc.nextLine();
		if(treeSet.contains(input)) {
			System.out.println("Element Found");
		}
		else {
			System.out.println("Element Not Found");
		}
	}

	private static Set<String> removeElement(Set<String> treeSet) {
		System.out.println("Enter Value To be Removed from Set");
		input = sc.nextLine();
		treeSet.remove(input);
		return treeSet;
	}

	private static Set<String> insertValuesIntoAnotherSet(Set<String> treeSet) {
		
		Set<String> treeSetCopy = new TreeSet<>();
		treeSetCopy.addAll(treeSet);
		return treeSetCopy;
	}

	private static Set<String> addItemsInSet(Set<String> treeSet) {
		System.out.println("Please provide the number of elements: ");
		count=sc.nextInt();
		sc.nextLine();
		System.out.println("Enter Values:");
		for(int i=0;i<count;i++) {
			input=sc.nextLine();
			treeSet.add(input);
		}
		return treeSet;
	}

	private static void convertToListThenDisplay(Set<?> treeSet) {
		List<?> list = new ArrayList<>(treeSet);
		System.out.println("Displaying Elements in Reverse Order With Iterator");
		ListIterator<?> listIterator = list.listIterator(list.size());
		while (listIterator.hasPrevious()) {
		    System.out.println(listIterator.previous().toString());
		}
	}

	private static void showSetWithIterator(Set<?> set) {
		Iterator<?> it = set.iterator();
		System.out.println("Displaying Elements with Iterator");
		while(it.hasNext()) {
			  System.out.println(it.next().toString());
		}
	}
	
	private static void reverseIterator(Set<?> set) {
		System.out.println("Displaying Elements in Reverse Order With Iterator");
		TreeSet<?> treeSet = new TreeSet<>(set);
		Iterator<?> setIterator=treeSet.descendingIterator();
		while(setIterator.hasNext()) {
			System.out.println(setIterator.next().toString());
		}
		
	}

}
