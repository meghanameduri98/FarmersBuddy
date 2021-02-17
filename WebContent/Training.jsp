<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="ISO-8859-1">
<script type="text/javascript">
function validate()
{ 
     var title = document.form.title.value;
     var  description= document.form.description.value;
     var schedule = document.form.schedule.value;
     var status = document.form.status.value;
     
     if (title==null || title=="")
     { 
     alert("Title can't be blank"); 
     return false; 
     }
     else if (description==null || description=="")
     { 
     alert("Description can't be blank"); 
     return false; 
     }
      else if (schedule==null || Schedule=="")
     { 
     alert("Schedule can't be blank"); 
     return false; 
     }
      else if (status==select)
     { 
     alert("Status can't be select choose one"); 
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
table, th, td {
  border: 1px solid black;
   border-collapse: collapse;
}
</style>
<body>
<div class="navbar">
				<a href="WebHome.jsp" class="right">LogOut</a>
			  <a href="About.jsp" class="right">Our Story</a>
			  <a href="predict.jsp" class="right">Soil Prediction  </a>
			  <a href="UserSoil.jsp" class="right">Soil</a>
			  <a href="UserFertilizer.jsp" class="right">Fertilizers</a>
			  <a href="UserCrop.jsp" class="right"> Crops </a>
			 <a href="UserQuery.jsp" class="right">Queries</a>
			 <a href="LoginHome.jsp" class="right">Home</a>  
		</div>
<center>
<br><br>
 <form action="PostTraining.jsp" method="post" name="form" onsubmit="return validate()">
  <center><h1 ><i><u><b>Training Information</b></u></i></h1></center>
  <table width=500 cellspacing=5 border=3>
  <tr><td ><b>Title</b></td><td><input type="text" name="title"></td></tr>
  <tr><td ><b>Description</b></td><td><input type="text" name="description"></td></tr>
  <tr><td ><b>Schelude</b></td><td><input type="text" name="schedule"></td></tr>
  <tr><td ><b>Status</b></td><td><select name="status">
  <option>SELECT</option>
  <option>Completed</option>
  <option>Scheduled</option>
  </select></td></tr>
  <tr><td><input type="submit" value="send"></td><td><input type="submit" value="cancel"><td></td></tr>
  </table>
  
  </form>
 </td></tr>
    </table>
   </center>
   <br>
    <p><a href="Usertrainingview.jsp">View Requested Training and Solutions</a></p>
    <div class="footer">
	<p> Contact us : 9874563210 </p>
	<p> email us : farmersbuddy@gmail.com </p>
	</div>
   </body></html>


