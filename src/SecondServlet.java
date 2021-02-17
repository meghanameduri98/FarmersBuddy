

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SecondServlet")
public class SecondServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html");  
		    PrintWriter out = response.getWriter();  
		          
		    String name=request.getParameter("AGOName");  
		    String password=request.getParameter("AGOpassword");  
		          
		    if(AGODao.validate(name, password)){  
		        RequestDispatcher rd=request.getRequestDispatcher("AGOHome.jsp");  
		        rd.forward(request,response);  
		    }  
		    else{   
		        RequestDispatcher rd=request.getRequestDispatcher("AGOerror.jsp");  
		        rd.include(request,response);  
		    }  
		          
		    out.close();   
		}
	}
