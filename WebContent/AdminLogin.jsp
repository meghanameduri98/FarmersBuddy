<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Farmers Buddy</title>
	
	<meta http-equiv="Content-Type" content="text/html" charset="ISO-8859-1">
	<style>
* {
  box-sizing: border-box;
}

/* Add a gray background color with some padding */
body {
  font-family: Arial;
  padding: 20px;
  background: #ddd;
}

/* Header/Blog Title */
.header {
  padding: 30px;
  font-size: 40px;
  text-align: center;
  background: #ddd;
}

/* Add a card effect for articles */
.card {
   background-color: white;
   padding: 20px;
   margin-top: 20px;
}

/* Clear floats after the columns */
.row{
  content: "";
  display: table;
  clear: both;
}

/* Footer */
.footer {
  padding: 20px;
  text-align: center;
  background: gray;
  margin-top: 20px;
position:fixed; 
		   left: 0;
		   bottom: 0;
		   width: 100%;
		   text-align: center;
		}
.navbar 
		{
		  overflow: hidden; 
		  background-color: #ddd; 
		}
		.navbar a 
		{
		  float: left; 
		  display: block; 
		  color: black; 
		  text-align: center; 
		  padding: 14px 20px; 
		  text-decoration: none;
		  
		}
		.navbar a.right
		{
		  float: right; 
		}
		.navbar a:hover 
		{
		  background-color: #ddd; 
		  color: black; 
		}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 800px) {
  .leftcolumn, .rightcolumn {   
    width: 100%;
    padding: 0;
  }
}
</style>
</head>
<%
	if("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("submit")!=null)
	{
		String user_name=request.getParameter("username");
		String password=request.getParameter("password");
		if("admin".equalsIgnoreCase(user_name) && "admin123".equalsIgnoreCase(password))
		{
			response.sendRedirect("AdminHome.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
	}
%>
<body>
<div class="navbar">
				<a href="Login.jsp" class="right"> Login </a>
				  <a href="About.jsp" class="right"> Our Story </a>
	 			 <a href="AGOLogin.jsp" class="right"> AGO Login </a>
	 			  <a href="WebHome.jsp" class="right"> Home </a>
			</div>
	<center>
	<br><br>
		<h1 ><i><u><b>Admin Login</b></u></i></h1>
		<form method="post">
			<table>
				<tr>
					<td >Login Name</td>
					<td><input type="text" name="username"></td>
				</tr>
			    <tr>
					<td >Password</td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td></td>
					<td><br><button type="submit" name="submit">Login</button></td>
				</tr>
				<tr>
					<td></td>		
					<td><button type="reset">Reset</button></td>
				</tr>
			</table>
		</form>
	</center>
	<div class="footer">
	<p> Contact us : 9874563210 </p>
	<p> email us : farmersbuddy@gmail.com </p>
	</div>
  </body>
</html>
