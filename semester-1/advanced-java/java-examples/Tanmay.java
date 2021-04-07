






 

public class Tanmay {

        public static void main(String args[])

        {       

             int a = 2, b = 0;

             for ( ; b < 20; ++b) {

                 if (b % a == 0)

                     continue; 

                 else if (b == 10)

                      break;

                 else

                    System.out.print(b + " ");

             }

        }

 }