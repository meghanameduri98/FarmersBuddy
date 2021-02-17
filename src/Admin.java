

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet("/Admin")
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String aname = request.getParameter("AdminName");
		String apass = request.getParameter("AdminPassword");
		
		try
		{
			if(aname!=null)
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
				String Query="select * from admin where adminname=? and adminpassword=?";
				PreparedStatement ps=conn.prepareStatement(Query);
				ps.setString(1, aname);
				ps.setString(2, apass);
				ResultSet rs=ps.executeQuery();
				if(rs.next())
				{
					response.sendRedirect("AdminHome.jsp");
				}
				else
				{
					response.sendRedirect("AdminLogin.jsp");
				}
			}
		}catch(Exception e){
			out.println("Exception:"+e.getMessage());
		}
	}	

}
