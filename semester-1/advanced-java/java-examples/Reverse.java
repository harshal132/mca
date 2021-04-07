import java.util.*;
class Reverse {
public static void main(String args[])
{
int i=0;
Scanner obj= new Scanner(System.in);
System.out.print("enter String");
String original=obj.next();
obj.close();
String reverse="";
for(i=original.length()-1;i>=0;i--)
{
reverse=reverse+original.charAt(i);
}
System.out.print(reverse);
}
}
