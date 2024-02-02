package project;
import java.sql.*;

public class ConnectionProvider {
	public static Connection getcon()
	{
	try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank2","root","anil@123");
			return con;
		}
		catch(Exception e)
		{
			System.out.print(e);
			return null;
		}
	}

}
