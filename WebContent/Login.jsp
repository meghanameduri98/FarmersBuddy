<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Farmers Buddy</title>
	<script type="text/javascript" src="scripts/ts_picker.js"></script>
		<script type="text/javascript" src="scripts/submit.js"></script>
<script language="javascript">
function formCheck(formobj){
	
	var fieldRequired = Array("username","password");
	
	var fieldDescription = Array("Login Name","Password");
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
	 			 <a href="AdminLogin.jsp" class="right"> Admin Login </a>
	 			 <a href="AGOLogin.jsp" class="right">AGO Login</a>
				  <a href="WebHome.jsp" class="right"> Home </a>
			</div>
<td width="700" align="right">
    <form action="FirstServlet" method="post" name="register" onsubmit="return formCheck(this)">
                    <table width="150" border="0" align="center">
                      <tr>
                        <td><div align="right" class="style25">
					  
					  <% if(request.getParameter("status")!=null)
					  {%>
					  <strong><%=request.getParameter("status")%></strong>
					  <%}%>
					  </div></td>
                      </tr>
                      <tr>
                        <td><table width="350" height="206" border="0" align="center" >
                          <tr>
                            <td ></td>
                            <br>
                            <td  align="center" class="style24" style="font-size:40px"><i><u><b>User Login</b></u></i></div></td>
                            <td width="29"></td>
                          </tr>
                          <tr>
                            <td height="120" align="right"></td>
                            <td><table width="226" border="0" align="center">
                                <tr>
                                  <td >UserName</td>
                                  <td><input type="text" name="username"></td>
                                </tr>
                                <br>
                                <tr>
                                  <td >Password</td>
                                  <td>
                                    <input type="password" name="password">
                                  </td>
                                </tr>
                                <tr>
                                  <td colspan="2"><label>
                                  <br>
                                      <div align="center">
                                        <input type="submit" name="Submit" value="Login">
                                        &nbsp;
                                        <input name="Input2" type="reset" value="Clear">
                                      </div>
                                    </label></td>
                                </tr>
                                </table></td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td height="21">&nbsp;</td>
                            <td align="center" ><br><a href="ForgotPassword.jsp" >Forgot Password ! !......</a></span> <br>
                              </div></td>
                            <td>&nbsp;</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table>
                    <p align="center" ><a href="Register.jsp" >New User Registration!!..</a>&nbsp;</p>
                    <p align="center" ><a href="AGORegister.jsp" >Agricultural Officer Registration!..</a></p>
                  </form>    
               </script>
               
              
         
              <script type="text/javascript">

</script>
</td>   

<div class="footer">
	<p> Contact us : 9874563210 </p>
	<p> email us : farmersbuddy@gmail.com </p>
	</div>
 
  </body>
</html>
