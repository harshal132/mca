abstract class Dada {
abstract void bc();
void mc() {
System.out.print(" mc() Method in Abstract Class\n");
}
}
class Vahini extends Dada {
void bc()
{
System.out.print("Dada chi method vahini madhe");
}
void nani()
{
System.out.print("Vahini chi swatachi method\n");
}
}
class Abstractmean {
public static void main(String args[])
{
Vahini v=new Vahini();
v.bc();
v.mc();
v.nani();
System.out.print("\n main sampla");
}
}