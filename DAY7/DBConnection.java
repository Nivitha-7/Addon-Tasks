import java.sql.*;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	public static void main(String[] args)
	{
    String url = "jdbc:mysql://localhost:3306/task";
     String user = "root";      
    String Pass = " "; 
    try {
    	Connection con = DriverManager.getConnection(url,user,Pass);
    	System.out.println("connected");
    	con.close();
    }catch(SQLException e)
    {
    	e.printStackTrace();
    }
    			
}    	
}
    
