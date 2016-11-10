package getConnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class GetConnection {
	public static Connection getConnection(){
		   String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		   String url = "jdbc:sqlserver://localhost:1433;DatabaseName=xnd";
		   Connection con = null;
		   try {
		    Class.forName(driver);
		    try {
		     con = DriverManager.getConnection(url,"sa","123456");
		    } catch (SQLException e) {
		     e.printStackTrace();
		     System.out.println("getconnection1");
		    }
		   } catch (ClassNotFoundException e) {
		    e.printStackTrace();
		    System.out.println("getconnection2");
		   }
		   return con;
		}
		/*public static void main(String args[]){
		   getConnection();
		}*/

}
