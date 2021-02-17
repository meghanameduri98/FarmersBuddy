<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Posting queries Page</title>
</head>
<body>
	<%Class.forName("oracle.jdbc.driver.OracleDriver");%>
	<%
		String question=request.getParameter("question");
		String answer=request.getParameter("answer");
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
		Statement stmt=conn.createStatement();
		int i=stmt.executeUpdate("insert into queryanswers(question,answer) values ('"+question+"','"+answer+"')");
		response.sendRedirect("AGO2Query.jsp");
	%>
	
</body>
</html>