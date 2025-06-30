
import java.util.Scanner;
    class account{
    private String acc;
    private int balance;
    
    account(String acc, int balance)
    {
        this.acc=acc;
        this.balance=balance;
        
    }
    public String getacc()
    {
        return acc;
    }
    public int getbalance()
    {
        return balance;
    }
    public void setacc(String acc )
    {
        this.acc =acc ;
    }
    public void setbalance(int amount)
    {    if(balance>0)
        {
        
        balance+=amount;
       System.out.println("deposit amount: "+amount);
       System.out.println("totalbalance : "+balance);
        }
        
    }
    public void setwithdraw(int withdraw )
    {
        balance= balance-withdraw;
        System.out.println("current balance:"+balance);
        System.out.println("withdrawn amount: "+withdraw);
    }
}
public class Main
{
	public static void main(String[] args) 
	{
	    account a=new account ("sathi",10000);
	    System.out.println("account name:"+a.getacc());
	    System.out.println("account balance"+a.getbalance());
	    a.setacc("parvati");
	    System.out.println("updated name :"+a.getacc());
	   a.setbalance(1000);
	   a.setwithdraw(20);}
}
