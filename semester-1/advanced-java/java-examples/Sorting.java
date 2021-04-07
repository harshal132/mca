import java.util.*;
class SortData {

void asec(int arr[],int n)
{
int i,j,temp;
for(i=0;i<n;i++)
{
   for(j=0;j<n;j++)
       {
             if(arr[i]<arr[j])
                   {
	temp=arr[i];
	arr[i]=arr[j];
	arr[j]=temp;
                   }
       }
	
}
System.out.print("Ascending Order\n");
for(int x=0;x<n;x++)
      {
	System.out.println(arr[x]);
      }
}
void desc(int arr[],int n)
{
int i,j,temp;
for(i=0;i<n;i++)
{
   for(j=0;j<n;j++)
       {
             if(arr[i]>arr[j])
                   {
	temp=arr[i];
	arr[i]=arr[j];
	arr[j]=temp;
                   }
       }
	
}
System.out.println("Descending Order\n");
for(int x=0;x<n;x++)
     {
	System.out.println(arr[x]);
     }
}

}
class Sorting {
public static void main(String args[])
{
int n,i;
int arr[]=new int[10];
Scanner obj=new Scanner(System.in);
System.out.print("How many numbers");
n=obj.nextInt();
for(i=0;i<n;i++)
    {
           arr[i]=obj.nextInt();
    }
    obj.close();
SortData data=new SortData();
data.asec(arr,n);
data.desc(arr,n);
}
}









