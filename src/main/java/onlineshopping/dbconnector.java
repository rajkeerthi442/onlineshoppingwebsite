 package onlineshopping;
import java.sql.*;
public class dbconnector {
	public static Connection getcon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshop","root","root");
			return con;
		}
		catch(Exception e) {
			System.out.print(e);
			return null;
		}
	}
}
