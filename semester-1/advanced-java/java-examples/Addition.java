import java.util.*;
class Addition {
public static void main(String args[])
{
Scanner obj= new Scanner(System.in);
System.out.print("enter 1st binary number");
int b1=obj.nextInt();
int ans[]=new int[10];
int i=0,rd=0;
System.out.print("\nenter 2nd binary number");
int b2=obj.nextInt();
while(b1!=0 || b2!=0)
{
ans[i]=(((b1%10)+(b2%10)+rd)%2);
rd=((b1%10)+(b2%10)+rd)/2;
i=i+1;
b1=b1/10;
b2=b2/10;
}
i=i-1;
System.out.print("Answer is\n");
while(i>=0)
{
System.out.print(ans[i]);
i=i-1;
}
System.out.print("\n Remainder is"+rd);
obj.close();
}
}
