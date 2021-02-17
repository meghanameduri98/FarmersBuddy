<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="ISO-8859-1">
<title>Farmers Buddy</title>
<script type="text/javascript">
function validate()
{ 
     var soiltype = document.form.soiltype.value;
     var desciption = document.form.description.value;
     
     if (soiltype==null || soiltype=="")
     { 
     alert("Soil Type can't be blank"); 
     return false; 
     }
     else if (description==null || description=="")
     { 
     alert("Description can't be blank"); 
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
				<a href="WebHomeHome.jsp" class="right"> LogOut </a>
			  <a href="About.jsp" class="right"> About us </a>
			  <a href="Security.jsp" class="right">Security</a>
			  <a href="Fertilizer.jsp" class="right"> Fertilizers </a>
			  <a href="Crops.jsp" class="right"> Crops </a>
			   <a href="Admin1Query.jsp" class="right"> Queries </a>
			   <a href="AdminTraining.jsp" class="right"> Training </a>
			  <a href="AdminHome.jsp" class="right">Home</a>
		</div>
<center>
 <h1><i><u><b>Types of Soil</b></u></i></h1>
<form action="PostSoil.jsp" method="post" name="form" onsubmit="return validate()">
		    <table> 
		     <tr>
		     	<td align=center > Soil Type </td>
		     	<td><input type="text" name="soiltype" /></td> 
		     </tr>
		     <tr>
		      
		     	<td align=center > Description</td>
		     	<td><input type="text" name="description"/></td>
		     
		     </tr>
		     <tr>
		     	<td></td>
		     	<td><input type="submit" value="Post soil type"/></td>
		     </tr>
		     </table>	        
		</form>
		<br>
		<p><a href="Soils.jsp">Go Back</a>
	</center>
	<div class="footer">
	<p> Contact us : 9874563210 </p>
	<p> email us : farmersbuddy@gmail.com </p>
	</div>
   </body>
</html>

