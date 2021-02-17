<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
#header1 {
  text-align: center;
}
.left1 {
  float: left;
}
.right1 {
  float: right;
}
</style>
	<body>
	<!-- Navigation -->
<div class="navbar">
			  <a href="About.jsp" class="right"> Our Story </a>
			  <a href="AdminLogin.jsp" class="right">Admin Login</a>
			  <a href="AGOLogin.jsp" class="right">AGO Login</a>
			  <a href="Login.jsp" class="right"> Login </a>
		</div>

<center>
<br>
<h1>Farmer Buddy</h1>
<section>
  <img class="mySlides" src="C:\Users\DELL\Desktop\Farmers Buddy Java Project\ABC\icon1.jpg"
  style="width:1000px;height:450px">
</section>
</center>


<section class="w3-container w3-center w3-content" style="max-width:600px">
  <h2 class="w3-wide" align="center"><a href="ImportantPoints.jsp">Important Points about usage of Fertilizers  </a></h2>
  <p class="w3-opacity" align="center"><i>"The ultimate goal of farming is not the growing of crops,</i></p>
  <p class="w3-opacity" align="center"><i>but the cultivation and perfection of human beings."</i></p>
  <br>
  <div id="header1">
  		<img src="C:\Users\DELL\Desktop\Farmers Buddy Java Project\ABC\flower.jpg" width="250" height="250" class="left1"/>
				<b><p align="left"><i>Cost of seeds: min-350/kg, max-400/kg</i></p></b>
		<img src="C:\Users\DELL\Desktop\Farmers Buddy Java Project\ABC\cotton.jpg" width="250" height="250" class="right1">
				<b><p align="right"><i>Cost of seeds: BG-II:800/kg, BT-700/packet</i></p></b>
	</div>
				
</section>
<br><br><br><br><br>
<br><br><br><br><br>
<!-- Footer -->
<div class="footer">
	<p> Contact us : 9874563210 </p>
	<p> email us : farmersbuddy@gmail.com </p>
	</div>
</footer>
	</body>
</html>
