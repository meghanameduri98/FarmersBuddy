import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBConnection {
	public Statement st;
	public Connection con;
	public ResultSet rs;

	public DBConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");  
		    con=DriverManager.getConnection(  
			"jdbc:oracle:thin:@localhost:1521:xe","system","root");  
			st = con.createStatement();
		} catch (Exception e) {
			System.out.println(e);

		}

	}

}