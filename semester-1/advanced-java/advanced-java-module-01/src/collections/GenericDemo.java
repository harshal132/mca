package collections;

class Test1<T> { 
    // An object of type T is declared 
    T obj; 
    Test1(T obj){
    	// constructor
    	this.obj = obj;  
    }   
    public T printDetails()  {
    	return this.obj; 
    } 
} 

// Driver class to test above 
class GenericDemo { 
    public static void main (String[] args) { 
        // instance of Integer type 
        Test1 <Integer> integerObject = new Test1<Integer>(15); 
        System.out.println(integerObject.printDetails()); 
        // instance of String type 
        Test1 <String> stringObject = new Test1<String>("Hello World!"); 
        System.out.println(stringObject.printDetails()); 
    } 
}
