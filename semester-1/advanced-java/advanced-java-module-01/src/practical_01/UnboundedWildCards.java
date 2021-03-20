package practical_01;
//Java program to demonstrate Unbounded Wildcards. 
import java.util.Arrays; 
import java.util.List; 

class UnboundedWildCards { 
  public static void main(String[] args)  { 
      //Integer List 
      List<Integer> list1= Arrays.asList(1,2,3); 
      //Double list 
      List<Double> list2=Arrays.asList(1.1,2.2,3.3); 
      printlist(list1); 
      printlist(list2); 
  } 
  private static void printlist(List<?> list)  { 

      System.out.println(list); 
  } 
  
} 