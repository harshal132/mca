package com.practical.exam;

class GenericClass<T> { 
    T object; 
    GenericClass(T obj){
    	// constructor
    	this.object = obj;  
    }   
    public T printDetails()  {
    	System.out.println("Object Class: "+object.getClass());
    	return this.object; 
    } 
}

public class GenericClassImplementation {
	public static void main(String[] abc) {
		GenericClass<String> stringObject = new GenericClass<>("Abdullah Shaikh");
		System.out.println(stringObject.printDetails());
		
		GenericClass<Integer> integerObject = new GenericClass<>(60);
		System.out.println(integerObject.printDetails());
	}
}
