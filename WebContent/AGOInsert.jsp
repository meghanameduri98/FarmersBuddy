<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
</head>
<body>
	<%Class.forName("oracle.jdbc.driver.OracleDriver");%>
	<%
		String first_name=request.getParameter("FirstName");
		String last_name=request.getParameter("LastName");
		String email_id=request.getParameter("Email_id");
		String city=request.getParameter("city");
		String state=request.getParameter("state");
		String country=request.getParameter("country");
		String mobile=request.getParameter("mobile");
		String designation=request.getParameter("Designation");
		String login_name=request.getParameter("LoginName");
		String password=request.getParameter("Password");
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
		Statement stmt=conn.createStatement();
		int i=stmt.executeUpdate("insert into myagoregistration(FirstName,LastName,city,state,country,mobile,Email_id,Designation,LoginName,password) values ('"+first_name+"','"+last_name+"','"+city+"','"+state+"','"+country+"','"+mobile+"','"+email_id+"','"+designation+"','"+login_name+"','"+password+"')");
		response.sendRedirect("AGOLogin.jsp");
		out.println("AGO Registered Successfully");	
	%>
</body>
</html>