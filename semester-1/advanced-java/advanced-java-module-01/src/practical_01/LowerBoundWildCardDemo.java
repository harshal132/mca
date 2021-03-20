package practical_01;
//Java program to demonstrate Lower Bounded Wildcards.
import java.util.Arrays; 
import java.util.List; 

class LowerBoundWildCardDemo { 
  public static void main(String[] args) { 
      //Lower Bounded Integer List 
      List<Integer> list1= Arrays.asList(4,5,6,7); 
        
      //Integer list object is being passed 
      printOnlyIntegerClassorSuperClass(list1); 

      //Number list 
      List<Number> list2= Arrays.asList(4,5,6,7); 
        
      //Integer list object is being passed 
      printOnlyIntegerClassorSuperClass(list2); 
      
      List<Double> list3=Arrays.asList(4.1,5.1,6.1, 7.1);
      //printOnlyIntegerClassorSuperClass(list3);   ## This Line will throw error as Double is not super class of Integer class
      
      List<Object> list4=Arrays.asList(4.1,5.1,6.1, 7.1);
      printOnlyIntegerClassorSuperClass(list4);  // ## This line will not throw error because Object class is super class for Integer class
  } 

  public static void printOnlyIntegerClassorSuperClass(List<? super Integer> list) { 
      System.out.println(list); 
  } 
} 