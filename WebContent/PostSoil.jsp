<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Posting soil types</title>
</head>
<body>
	<%Class.forName("oracle.jdbc.driver.OracleDriver");%>
	<%
		String soil_type=request.getParameter("soiltype");
		String description=request.getParameter("description");
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
		Statement stmt=conn.createStatement();
		int i=stmt.executeUpdate("insert into MySoil(soiltype,description) values ('"+soil_type+"','"+description+"')");
		response.sendRedirect("Soils.jsp");
		out.println("Posted soil type");	
	%>
</body>
</html>