package DB;

import java.sql.Connection;
import java.sql.DriverManager;



public class DBConnect {
	
	public static Connection conn = null;
	
	public static Connection getConnection() {
		
		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			 conn = DriverManager.getConnection(url, "system", "1234");
			
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		return conn;
	}

	 
}