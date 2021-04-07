
class Faltu {
public Faltu() 
{
System.out.print("This is Constructor\n");
}
public void finalize()
{
System.out.print("This is Destructor\n");
}
public void tp()
{
System.out.print("This is a method\n");
}
}
class Const {
public static void main(String a[])
{
Runtime.runFinalizersOnExit(true); //should be declared in program to ensure that destructor runs
Faltu f=new Faltu();
f.tp();
System.out.print("main method khatam\n");
}
}