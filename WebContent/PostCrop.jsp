<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Posting Fertilizers</title>
</head>
<body>
	<%Class.forName("oracle.jdbc.driver.OracleDriver");%>
	<%
		String cname=request.getParameter("cname");
		String season=request.getParameter("season");
		String fertilizer=request.getParameter("fertilizer");
		String harvest=request.getParameter("harvest");
		String soil=request.getParameter("soil");
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
		Statement stmt=conn.createStatement();
		int i=stmt.executeUpdate("insert into crops(cname,season,fertilizer,harvest,soil) values ('"+cname+"','"+season+"','"+fertilizer+"','"+harvest+"','"+soil+"')");
		response.sendRedirect("Crops.jsp");
		out.println("Posted Successfully");	
	%>
</body>
</html>