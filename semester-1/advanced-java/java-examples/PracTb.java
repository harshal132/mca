import java.io.*;

class PracTb {
public static void main(String args[]) throws IOException {
long sum=0;
int q,i=0;
String s;
char arr[]=new char[50];
BufferedReader dis
          = new BufferedReader(new InputStreamReader(System.in));;
System.out.println("enter digits");
try{
 s=dis.readLine();
}catch(Exception e)
{
System.out.print("Exception");
return;
}
arr=s.toCharArray();
System.out.println("entered Digits are\n");
for(i=0;i<arr.length;i++)
{
System.out.println(arr[i]);
}
int j=0;
while(j<arr.length)
{
q=(int)arr[j];
q=q-48;
sum=sum+q;
j++;
}
System.out.println("Sum of Digits="+sum);
}
}