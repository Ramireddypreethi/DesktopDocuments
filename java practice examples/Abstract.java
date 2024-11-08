
import java.util.*;
abstract class Shape
{ 
int l,b;
 Shape(int l,int b)
{
this.l=l;
this.b=b;
}
abstract void area();
}
class Rectangle extends Shape
{
Rectangle(int l,int b)
{
super(l,b);
}
void area()
{
System.out.println(l*b);
}
}
class Traingle extends Shape
{
Traingle(int l,int b)
{
super(l,b);
}
void area()
{
System.out.println(l+b);
}
}
class Abstract
{
public static void main(String args[])
{
Scanner s=new Scanner(System.in);
System.out.println("Enter l:");
int l=s.nextInt();
System.out.println("breadth:");
int b=s.nextInt();
Shape t=new Rectangle(l,b);
t.area();
System.out.println("Enter l:");
int l1=s.nextInt();
System.out.println("breadth:");
int b1=s.nextInt();
t=new Traingle(l1,b1);
t.area();

}
}

