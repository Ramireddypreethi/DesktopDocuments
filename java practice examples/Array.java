import java.lang.*;

import java.util.*;
class Array
{

public static void main(String args[])
{
Scanner s=new Scanner(System.in);
 Map<String,Integer> h=new HashMap<String,Integer>();
int n;String str;int  mbno;
System.out.println("Enter no:");
n=s.nextInt();
for(int i=0;i<n;i++)
{

System.out.println("Enter name:");
str=s.next();
mbno=s.nextInt();
h.put(str,mbno);
}
for(Map.Entry m:h.entrySet())
{
System.out.println(m.getKey()+" "+m.getValue());
}
}
}
