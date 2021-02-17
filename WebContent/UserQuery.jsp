<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><meta http-equiv="Content-Type" content="text/html" charset="ISO-8859-1">
<title>Farmers Buddy</title>
<script type="text/javascript">
function validate()
{ 
     var username = document.form.username.value;
     var question = document.form.question.value;
     
     if (username==null || username=="")
     { 
     alert("Username can't be blank"); 
     return false; 
     }
     else if (question==null || question=="")
     { 
     alert("Question can't be blank"); 
     return false; 
     }
 } 
</script> 
	
	
	<style type="text/css">
	<script type="text/javascript" src="scripts/general.js"> </script>
<STYLE type=text/css>
		.inpt {
			FONT-SIZE: 8pt; BORDER-TOP-STYLE: groove; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; BORDER-RIGHT-STYLE: groove; BORDER-LEFT-STYLE: groove; BORDER-BOTTOM-STYLE: groove
		}
		.tarea {
			FONT-SIZE: 8pt; BORDER-TOP-STYLE: groove; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; BORDER-RIGHT-STYLE: groove; BORDER-LEFT-STYLE: groove; BORDER-BOTTOM-STYLE: groove
		}
		INPUT {
			FONT-SIZE: 8pt; BORDER-TOP-STYLE: groove; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; BORDER-RIGHT-STYLE: groove; BORDER-LEFT-STYLE: groove; BORDER-BOTTOM-STYLE: groove
		}
		FONT {
			COLOR: #4f4d4d; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif
		}
		.style1 {
			color: #9F0B05;
			font-weight: bold;
			font-size: 9px;
		}
		a:active {
			text-decoration: none;
		}
		.style2 {
			color: #9F0B05;
			font-weight: bold;
		}
		.style23 {font-size: 14px; font-weight: bold; color: #990000; }
		.style24 {
			font-size: 24px;
			font-weight: bold;
		}
		.style25 {color: #663333}
		.style26 {
			color: #753F81;
			font-weight: bold;
		}
		.style27 {
		    font-size: 28px; font-weight: bold;
			color: #228B22;
			font-weight: bold;
		}
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
<center>
</div>
		<div class="navbar">
		<a href="WebHome.jsp" class="right">LogOut</a>
			  <a href="About.jsp" class="right">Our Story</a>
			  <a href="predict.jsp" class="right"> Soil Prediction </a>
			  <a href="UserSoil.jsp" class="right">Soil</a>
			  <a href="UserFertilizer.jsp" class="right">Fertilizers</a>
			  <a href="UserCrop.jsp" class="right"> Crops </a>
			 <a href="Training.jsp" class="right">Training</a>
			 <a href="LoginHome.jsp" class="right">Home</a> 
			  
		</div>
		<br>
	<h1 ><i><b><u>Post your Queries</u></b></i></h1>
<form action="PostQuery.jsp" method="post" name="form" onsubmit="return validate()">
		    <table> 
		     <tr>
		     	<td align=center > Name </td>
		     	<td><input type="text" name="name" /></td> 
		     </tr>
		     <tr>
		      
		     	<td align=center > your Question</td>
		     	<td><input type="text" name="Question"/></td>
		     
		     </tr>
		     <tr>
		     	<td></td>
		     	<td><input type="submit" value="Post Query"/></td>
		     </tr>
		      <tr>
		     	<td></td>
		     	<td><br><p><a href="Queries.jsp">click here to view Posted Queries</a></td>
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