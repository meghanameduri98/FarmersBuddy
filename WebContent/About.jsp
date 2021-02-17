<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="ISO-8859-1">
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
</style>
</head>
</head>
<body>
<div class="navbar">

 			<a href="Login.jsp" class="right"> Login </a>
    		<a href="AdminLogin.jsp" class="right">Admin Login</a>
    		<a href="AGOLogin.jsp" class="right"> AGO Login </a>
    		<a href="WebHome.jsp" class="right"> Home </a>
		</div>
<div class="lines">
<br><br>
	<center><h1 ><i><u><b>Our Story</b></u></i></h1>
	<br>
		<p style="font-size:25px"> The main objective of the project is to provide information to the farmers and agricultural students.</p>
		<p style="font-size:25px"> It provides better solutions for farmers in providing the information regarding soils,fertilizers.</p>
		<p style="font-size:25px"> It helps the users in getting training regarding various technologies that can be used in farming.</p>
		<img src="C:\Users\DELL\Desktop\Farmers Buddy Java Project\ABC\a1.png" height=300px width=450px>
	</center>
</div>
<div class="footer">
	<p> Contact us : 9874563210 </p>
	<p> email us : farmersbuddy@gmail.com </p>
	</div>
</body>
</html>