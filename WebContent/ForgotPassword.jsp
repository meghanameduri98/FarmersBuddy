<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Farmers Buddy</title>
<script type="text/javascript">
function validate()
{ 
     var login = document.form.login.value;
     var password = document.form.password.value;
     var cpassword = document.form.cpassword.value;
     
     if (login==null || login=="")
     { 
     alert("email can't be blank"); 
     return false; 
     }
     else if (password==null || password=="")
     { 
     alert("password can't be blank"); 
     return false; 
     }
     else if (cpassword==null || cpassword==password)
     { 
     alert("password doesn't match"); 
     return false; 
     }
 } 

</script>
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
<body>
<div class="navbar">
				<a href="About.jsp" class="right"> Our Story </a>
	 			 <a href="WebHome.jsp" class="right"> Home </a>
			</div>
<center>
	<form action="ForgotServlet" method="post">
	<br>
	<h1 ><i><u>NOTE:- Enter your Login Name to Give your Password</u></i></h1>
	<table>
			<tr><td >Enter LoginName</td><td><input type="text" name="login"></td></tr><br>
			<tr><td >New_Password</td><td><input type="password" name="password"></td></tr><br>
			<tr><td >Cofirm_Password</td><td><input type="password" name="cpassword"></td></tr>
			<tr><td></td><td><input type="submit" value="Click"></td></tr>		
	</table>
	</form>
	<p align="center"><a href="Login.jsp">Go Back</a>
	<div class="footer">
	<p> Contact us : 9874563210 </p>
	<p> email us : farmersbuddy@gmail.com </p>
	</div>
</center>
</body>
</html>