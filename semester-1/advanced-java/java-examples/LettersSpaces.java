import java.io.*;
class LettersSpaces{
public static void main(String args[]) throws IOException {
String s;
int i=0,space=0,num=0,letters=0;
//DataInputStream dis =new DataInputStream(System.in);
BufferedReader dis
          = new BufferedReader(new InputStreamReader(System.in));
System.out.print("enter String\n");
s=dis.readLine();
char arr[]=s.toCharArray();
for(i=0;i<s.length();i++)
	{
		if(arr[i]==32)
		{
			space++;
		}
		if(arr[i]>=48 && arr[i]<=57)
		{
			num++;	
		}
		if(arr[i]>=65 && arr[i]<=90 ||  arr[i]>=97 && arr[i]<=122)
		{
			letters++;
		}
	}
System.out.println("No of Spaces="+space);
System.out.println("no of letters="+letters);
System.out.print("No of numbers="+num);
}
}