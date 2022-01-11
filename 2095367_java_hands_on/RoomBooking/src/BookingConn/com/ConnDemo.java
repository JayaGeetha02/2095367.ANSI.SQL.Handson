package BookingConn.com;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnDemo {
     static Connection connection;
	
	public static Connection createConn()  {
		try {
		connection = DriverManager.getConnection("jdbc:mysql://local host:3306/java", "root", "Geetha2123*");
		}catch (Exception e) {
			System.out.println("Error in DB Connection : "+e);
		}
		return connection;
	}
	public static void closeconn() {
		try {
			connection.close();
		} catch (Exception e) {
			System.out.println("Error in DB Connection Close : "+e);
		}
	}
}
