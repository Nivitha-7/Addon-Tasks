package exceptionhandling;
import java.lang.*;
import java.util.Arrays;
public class TryCatchClass
{
  public static void main(String[] args)
  {
	   int a=5;
	   int b=0;
	   try {
	    System.out.println(a/b);	   }
	   catch(Exception e)
	 {
		   System.out.println("Give the valid number for number b");
		  
	   }
	 }
}
