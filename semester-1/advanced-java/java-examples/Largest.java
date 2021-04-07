import java.util.*;
class Largest {
public static void main(String args[])
{
Scanner sc=new Scanner(System.in);
System.out.print("Enter number of elements");
int n,i=0;
n=sc.nextInt();
System.out.println("Enter elements");
int arr[]=new int[15];
for(i=0;i<n;i++)
{
arr[i]=sc.nextInt();
}
sc.close();
int j=0,large,small;
large=arr[j];
small=arr[j];
for(j=0;j<n;j++)
{

if(arr[j]>large)
{
large=arr[j];
}
if(arr[j]<small)
{
small=arr[j];
}

}

System.out.println("Largest element is "+large);
System.out.print("Smallest element is "+small);

}
}