<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>Farmers Buddy</title>
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
table, th, td {
  border: 1px solid black;
   border-collapse: collapse;
}
</style>
</head>
<body>
<div class="navbar">
			   <a href="WebHome.jsp" class="right">LogOut</a>
			  <a href="About.jsp" class="right">About us</a>
			  <a href="AGOFertilizer.jsp" class="right"> Fertilizers </a>
			  <a href="AGOCrop.jsp" class="right"> Crops </a>
			  <a href="FinalQuery.jsp" class="right"> Queries </a>
			  <a href="ViewTraining.jsp" class="right"> Training </a>
			  <a href="AGOHome.jsp" class="right"> Home </a>
		</div>
<center><h1><u><b><i>Types of Soil </i></b></u></h1></center>
<%
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
		Statement stmt=conn.createStatement();
		ResultSet rs=stmt.executeQuery("select * from MySoil");
		
%>
<table align="center" border="1" width="100" style="width:100%" class="table">
<tbody>
<tr>
<th width="25%">Soil Type</th>
<th width="25%">Description</th>
</tr>
<%
while(rs.next())
{
%>
<tr>
<td width="25%"><%=rs.getString(1)%></td>
<td width="25%"><%=rs.getString(2)%></td>
</tr>
<%
}
%>
</tbody>
</table>
<%
	}
catch(Exception e)
{
	e.printStackTrace();
}
%>
<div class="footer">
	<p> Contact us : 9874563210 </p>
	<p> email us : farmersbuddy@gmail.com </p>
	</div>
</body>
</html>