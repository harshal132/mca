package collections;

//A Simple Java program to show multiple 
//type parameters in Java Generics 
//We use < > to specify Parameter type 
class Test<T, U> { 
 T obj1;  // An object of type T 
 U obj2;  // An object of type U 
 // constructor 
 Test(T obj1, U obj2) { 
     this.obj1 = obj1; 
     this.obj2 = obj2; 
 } 

 // To print objects of T and U 
 public void print() { 
     System.out.println(obj1); 
     System.out.println(obj2); 
 } 
}

//Driver class to test above 
class GenericMultipleParameters 
{ 
 public static void main (String[] args) 
 { 
     Test <String, Integer> object = new Test<String, Integer>("Hello There!", 15); 
     object.print(); 
 } 
}