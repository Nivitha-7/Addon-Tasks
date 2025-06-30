CHECKING FOR LEAP YEAR:-
______________________________________________________________________________________________________________________________________

import java.util.Scanner; 
public class Main 
{ 


    static void checkLeap(int year) 
{ 
        if (year % 4 == 0  &&  year%100 !=0 || year%400 = 0)  
        { 
            System.out.println(year + " is a leap year"); 
        } else 
	{ 
            System.out.println(year + " is not a leap year"); 
        } 
    } 

    public static void main(String[] args) 
{ 
        Scanner in=new Scanner(System.in);
	{ 
            System.out.print("enter the number:"); 
        } 
        int year = in.nextInt(); 
       checkLeap(year);   
    } 
} 
