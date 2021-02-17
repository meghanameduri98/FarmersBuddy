<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%
    String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Farmers Buddy</title>
<script type="text/javascript" src="scripts/ts_picker.js"></script>
		<script type="text/javascript" src="scripts/submit.js"></script>
	<script language="javascript">
function formCheck(formobj){
	
	var fieldRequired = Array("FirstName","LastName","city","state","country","Email_id","mobile","Designation","LoginName","Password");
	
	var fieldDescription = Array("FirstName","LastName","City","State","Country","Email_id","mobile","Designation","LoginName","Password");
	// dialog message
	var alertMsg = "Please complete the following fields:\n";
	
	var l_Msg = alertMsg.length;
              
	
	for (var i = 0; i < fieldRequired.length; i++){
		var obj = formobj.elements[fieldRequired[i]];
		if (obj){
			switch(obj.type){
			case "select-one":
				if (obj.selectedIndex == -1 || obj.options[obj.selectedIndex].text == ""){
					alertMsg += " - " + fieldDescription[i] + "\n";
				}
				break;
			case "select-multiple":
				if (obj.selectedIndex == -1){
					alertMsg += " - " + fieldDescription[i] + "\n";
				}
				break;
			case "text":
			case "textarea":
				if (obj.value == "" || obj.value == null){
					alertMsg += " - " + fieldDescription[i] + "\n";
				}
				break;
			default:
			}
			if (obj.type == undefined){
				var blnchecked = false;
				for (var j = 0; j < obj.length; j++){
					if (obj[j].checked){
						blnchecked = true;
					}
				}
				if (!blnchecked){
					alertMsg += " - " + fieldDescription[i] + "\n";
				}
			}
                                                  
		}
	}

	if (alertMsg.length == l_Msg){
		return true;
	}else{
		alert(alertMsg);
		return false;
	}
}

</script>		
<script language="javascript">
function emailcheck(){
var string1=document.register.email.value
if (string1.indexOf("@")==-1){
alert("Please input a valid email address!")
document.register.email.focus()
}
}

</script>
<meta http-equiv="Content-Type" content="text/html" charset="ISO-8859-1">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
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
			  <a href="About.jsp" class="right">Our Story</a>
			  <a href="WebHome.jsp" class="right">Home</a>
		</div>
	<center>
	<br>
			<form action="AGOInsert.jsp" method="post" onsubmit="return formCheck(this)">
  
<table width="481" border="0" align="center" >
                        <tr>
                          <td width="7" height="57" valign="top">&nbsp;</td>
                          <td width="471"><div align="center" style="font-size:40px"><span class="style11"><strong><i><b><u>AGORegistration</u></b></i></strong></span></div></td>
                          <td width="10">&nbsp;</td>
                        </tr>
                        <tr>
                          <td align="right">&nbsp;</td>
                          <td><table width="407" border="0" align="center">
                              <tr>
                                <td width="128" ><span class="style17">First Name </span></td>
                                <td width="269"><label>
                                  <input type="text" name="FirstName" onkeypress="return lettersOnly(event)">
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17" >Last Name </span></td>
                                <td><label>
                                  <input type="text" name="LastName" onkeypress="return lettersOnly(event)">
                                </label></td>
                              </tr>
                              <tr>
                             
                                <td><span class="style17" >City</span></td>
                                <td><label>
                                  <select name="city">
                                    <option>Vijayawada</option>
                                    <option>Hyderabad</option>
                                    <option>Mumbai</option>
				   					 <option>banglore</option>
                                    <option>chennai</option>
                                  </select>
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17" >State</span></td>
                                <td><label>
                                  <select name="state">
                                    <option>Andhra pradesh</option>
                                    <option>Telangana</option>
                                    <option>Maharashtra</option>
				    				<option>karnataka</option>
				   					<option>tamilnadu</option>	
                                  </select>
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17" >Country</span></td>
                                <td><label>
                                  <select name="country">
                                    <option>India</option>
                                  </select>
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17" >Email Id</span></td>
                                <td><label>
                                    <input type="text" name="Email_id" onblur="emailcheck()" onkeypress="return lettersOnly(event)">
                                </label></td>
                              </tr>
                               <tr>
                                <td><span class="style17" >Mobile number</span></td>
                                <td><label>
                                  <input name="mobile" type="text">
                                </label></td>
                              </tr>
                               <tr>
                                <td><span class="style17" >Designation</span></td>
                                <td><label>
                                  <input name="Designation" type="text">
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17" >Login Name </span></td>
                                <td><label>
                                  <input type="text" name="LoginName">
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17">Password</span></td>
                                <td><label>
                                  <input name="Password" type="password">
                                </label></td>
                              </tr>
                             
                                                             <td colspan="2"><div align="center">
                                    <br><Input type="submit" value="Register">
                                </div>
                                </td>
                              </tr>
				              </table>
</td>
</tr>
</table>
</form> 
<br>       
<p><a href="Login.jsp">Go Back</a>   </p> 
<div class="footer">
	<p> Contact us : 9874563210 </p>
	<p> email us : farmersbuddy@gmail.com </p>
	</div> 
	</center>
	</body>
	</html>
