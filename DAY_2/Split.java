ACCEPT STRING AND SPLIT INTO WORDS:-
public class Main
{
	public static void main(String[] args) 
	{
		
		String str1 = " I LOVE ZOHO";
		String str[]=str1.split(" ");
		for( int i=str.length-1;i>0;i--)
		{
		    
		    System.out.print(str[i]+ " ");
		}
	    
	}
}
