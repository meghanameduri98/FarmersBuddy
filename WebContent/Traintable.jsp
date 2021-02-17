<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="ISO-8859-1">
<title>Farmers Buddy</title>
<script> 
function validate()
{ 
     var title = document.form.title.value;
     var process = document.form.Process.value;
     
     if (title==null || title=="")
     { 
     alert("title can't be blank"); 
     return false; 
     }
     else if (process==null || process=="")
     { 
     alert("Process can't be blank"); 
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
<body>
<div class="navbar">
			<a href="#" class="right"> LogOut </a>
			  <a href="#" class="right"> Our Story </a>  
			  <a href="#" class="right"> Soil </a> 
			  <a href="#" class="right"> Fertilizers </a>
			  <a href="#" class="right"> Crops </a>
			  <a href="#" class="right"> Queries </a>
			   <a href="#" class="right">Home</a>
		</div>
<center>
 <h1><i><u><b>Solutions</b></u></i></h1>
<form action="TrainingSolution.jsp" method="get" onsubmit="return validate()" name="form">
		    <table> 
		     <tr>
		     	<td align=center > Title </td>
		     	<td><input type="text" name="title" /></td> 
		     </tr>
		     <tr>
		      
		     	<td align=center >Process</td>
		     	<td><input type="text" name="Process"/></td>
		     
		     </tr>
		     <tr>
		     	<td></td><br>
		     	<td><input type="submit" value="Post Solution"/></td>
		     </tr>
		     </table>	        
		</form>
		<p><a href="AGO2Training.jsp">Go Back</a>
	</center>
	<div class="footer">
	<p> Contact us : 9874563210 </p>
	<p> email us : farmersbuddy@gmail.com </p>
	</div>
   </body>
</html>

