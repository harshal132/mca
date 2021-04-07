class Box{
double width,height,depth;
Box(double w, double h, double d)
{
width=w;
height=h;
depth=d;
}
double area()
{
return (width*height*depth);
}
}
class Boxweight extends Box
{
double depth,width,height,vajan;
Boxweight(double w,double h,double d,double v)
{
super(w,  h, d);
width=w;
depth=d;
height=h;
vajan=v;

}
void show()
{
System.out.print("\nVajan="+vajan);
}
}
class Inherited{
public static void main(String args[])
{
double area;
Boxweight ob=new Boxweight(20,20,20,20);
ob.show();
area=ob.area();
System.out.print("\narea="+area);
}
}
 