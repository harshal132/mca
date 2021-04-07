import java.util.Scanner;
class Table
{
public static void main(String args[])
{
Scanner obj=new Scanner(System.in);
System.out.print("Enter a number");
 int x=obj.nextInt();
 obj.close();
int i=1,ans;
for(i=1;i<11;i++)
{
ans=x*i;
System.out.print("\n"+x+"*"+i+"="+ans);
}
}
}