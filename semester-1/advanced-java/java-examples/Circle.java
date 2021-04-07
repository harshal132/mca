import java.util.*;
class Circle {
public static void main(String args[])
{
Scanner obj= new Scanner(System.in);
System.out.print("Enter radius of circle");
int r=obj.nextInt();
double area=3.1428*r*r;
double volume=Math.pow(r,3);
System.out.print("\nArea of Circle="+area);
System.out.print("\n Volume of Circle="+volume);
obj.close();
}
}
