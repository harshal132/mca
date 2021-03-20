package practical_01;
//A Simple Java program to show working of user defined 
//Generic functions 

class GenericFunctions 
{ 
 // A Generic method example 
 static <T> void genericDisplay (T element) 
 { 
     System.out.println(element.getClass()+ 
                        " = " + element); 
 } 

 // Driver method 
 public static void main(String[] args) 
 { 
      // Calling generic method with Integer argument 
     genericDisplay(11); 

     // Calling generic method with String argument 
     genericDisplay("Example for Generic Functions"); 

     // Calling generic method with double argument 
     genericDisplay(1.0); 
 } 
}