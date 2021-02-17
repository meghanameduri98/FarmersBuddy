import java.sql.*;  
  
public class ForgotDao {  
public static boolean validate(String login,String password){  
boolean status=false;  
try{  
Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","system","root");  
      
PreparedStatement ps=con.prepareStatement(  
"update myuserregistration set password=? where LoginName=?");  
ps.setString(1,login);  
ps.setString(2,password);  
      
ResultSet rs=ps.executeQuery();  
status=rs.next();  
          
}catch(Exception e){System.out.println(e);}  
return status;  
}  
}  