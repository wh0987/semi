package data_source;

import java.sql.*;

public class DriverTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Connection con;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://192.168.10.177:3306/bbd", "dba", "asdf1234");
			System.out.println("Success");
		}
		catch (SQLException ex) {System.out.println("SQLException" + ex);}
		catch (Exception e) {System.out.println("Exception"+ e);}
	}

}
