package practical_04;

import java.util.HashMap;
import java.util.Map;

/*
 *  Assignments on Map Interface
	Write a Java program using Map interface containing list of items having keys and
	associated values and perform the following operations:
		a. Add items in the map.
		b. Remove items from the map
		c. Search specific key from the map
		d. Get value of the specified key
		e. Insert map elements of one map in to other map.
		f. Print all keys and values of the map.
 */
public class MapOperations {

	public static void main(String[] args) {
		
		Map<String, Double> hm = new HashMap<String, Double>();
		Map<String, Double> hmCopy = new HashMap<String, Double>();
		
		//a. Add items in the map.
		hm.put("John Doe", new Double(3434.34));
		hm.put("Tom Smith", new Double(123.22));
		hm.put("Jane Baker", new Double(1378.00));
		hm.put("Tod Hall", new Double(99.22));
		hm.put("Ralph Smith", new Double(-19.08));
		hm.put(null, 2345.22);
		System.out.println(hm);
		
		
		//b. Remove items from the map
		hm.remove("John Doe");
		System.out.println(hm);
		
		//c. Search specific key from the map
		System.out.println(hm.containsKey("Jane Baker"));
		
		//d. Get value of the specified key
		System.out.println(hm.get("Jane Baker"));
		
		//e. Insert map elements of one map in to other map.
		hmCopy.putAll(hm);
		System.out.println(hmCopy);
		
		//f. Print all keys and values of the map.
		hm.entrySet().forEach(entry->{
		    System.out.println(entry.getKey() + ":\t " + entry.getValue());  
		 });
		
	}

}
