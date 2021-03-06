package collections;

import java.util.ArrayList;
import java.util.List;

/*The Collection in Java is a framework that provides an architecture to 
 store and manipulate the group of objects.
 Java Collections can achieve all the operations
 that you perform on a data such as searching, sorting, insertion, manipulation, and deletion.
 Java Collection means a single unit of objects. Java Collection framework provides 
 many interfaces (Set, List, Queue, Deque) and 
 classes (ArrayList, Vector, LinkedList, PriorityQueue, HashSet, LinkedHashSet, TreeSet).
*/

//refer =>https://www.javatpoint.com/java-arraylist
public class ArrayListExamples {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// create an array list
		List<String> al = new ArrayList<String>();
		System.out.println("Initial size of al: " + al.size());

		// add elements to the array list
		al.add("C");
		al.add("A");
		al.add("E");
		al.add("B");
		al.add("D");
		al.add("F");
		al.add(1, "A2");

		System.out.println("Size of al after additions: " + al.size());

		// display the array list
		System.out.println("Contents of al: " + al);

		// Remove elements from the array list
		al.remove("F");
		al.remove(2);

		System.out.println("Size of al after deletions: " + al.size());
		System.out.println("Contents of al: " + al);
	}

}
