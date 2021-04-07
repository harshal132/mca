class BaseClass {
void demo(){
System.out.print("Method From Base Class");
}
}
class Derived extends BaseClass {
void demo()
{
System.out.println("Method from Derived class");
}
}
class Override{
public static void main(String a[])
{
Derived d=new Derived();
d.demo();

}
}