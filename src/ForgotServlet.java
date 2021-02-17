

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;


@WebServlet("/ForgotServlet")
public class ForgotServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			 response.setContentType("text/html");  
			    PrintWriter out = response.getWriter();  
			try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
				
				String login=request.getParameter("login");  
				String password=request.getParameter("password");  
				 
				PreparedStatement ps=conn.prepareStatement("update myuserregistration set password=? where LoginName=?");
				ps.setString(2,login);
				ps.setString(1,password);
				
				int i=ps.executeUpdate();
				
				if(i>0)
				{
					response.sendRedirect("ForgotPage.jsp");
				}
				else
				{
					response.sendRedirect("ForgotError.jsp");
				}
			}
			catch(Exception e)
			{
				
			}
					
	}
}
