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
			  <a href="Login.jsp" class="right"> Login </a>
			  <a href="About.jsp" class="right"> Our Story </a>
			  <a href="AdminLogin.jsp" class="right">Admin Login</a>
			  <a href="AGOLogin.jsp" class="right">AGO Login</a>
		</div>
	<br>
		<h1 align="center" style="font-size:40px;font-family:Arial"><i><u><b>Points to be noted:</i></b></u></h1>
		<p>1. Use 2 to 3 pounds of fertilizer such as 10-20-10 for every 100 square feet of garden area.</p>
		<p>2. Do not use too much fertilizer. This can kill plants.</p>
		<p>3. Mix 1 Tbsp per gallon of soil or topdress 1/2 to 3 cups monthly per established plant.When adding fertilizer to potted plants use organic blends(Recommended for container gardens). </p>
		<p><u><b>How to apply Fertilizer to Plants</b></u></p>
		<p>a. Apply the fertilizer around the base of the plant, extending to the drip line.</p>
		<p>b. For vegetables, place the fertilizer in a strip parallel to the planting row.</p>
		<p>c. Water-soluble fertilizers are faster acting but must be applied more frequently.</p>
		<p>d. This method gives plants food while you water.</p>
		<p><u><b>How Long does it take fertilizer to work on plants </b></u></p>
		<p>1. Quick-release fertilizer absorbs in the glass within 24 hours. Quick-release or soluble fertilizers provide available nitrogen to grass. </p>
		<p>2. Quick-release fertilizers usually improve your grass within a week or less, according to the Purdue Turfgrass Science Program.</p>
		<p align="center"><a href="WebHome.jsp">Go Back to HomePage</a></p>
		
		<div class="footer">
	<p> Contact us : 9874563210 </p>
	<p> email us : farmersbuddy@gmail.com </p>
	</div>
	</body>
</html>
