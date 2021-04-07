class Pattern{
public static void main(String args[])
{
int n,j,i;
n=Integer.parseInt(args[0]);
for ( i=n;i>=1;i--)
{
for(j=1;j<=i;j++)
{
System.out.print("*");
}
System.out.print("\n");
}

}
} 