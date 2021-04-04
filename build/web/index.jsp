<%-- 
    Document   : index
    Created on : 6 Jun, 2020, 1:46:17 PM
    Author     : Aditi Polkam
--%>

<%@page import="blog.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" type="text/css" href="style.css">  
	<link rel="stylesheet" type="text/css" href="nav.css"> 
</head>
    <body>
	<div class="navbar">
		<center>
		<br>
		<font size="20">
			<span style="color:red;size:15;font-family:Segoe Script;text-shadow: 3px 3px 5px red;">Destination</span>
			<span style="color:lightblue;size:15;font-family:Segoe Script;text-shadow: 3px 3px 5px lightblue;">Seekers.</span>
		</font>
		</center><br>
	</div>

    <div class="login-box">
    <img src="images/av2.png" class="avatar">
        <h1>Login Here</h1>
                <br>
            <form name="login" action="ValidationServlet" method="POST">
<%
	User user = new User();
	if(request.getAttribute("errorMsgs") != null){
            java.util.List<String> errorMsgs = (java.util.List<String>)request.getAttribute("errorMsgs");
            for(String errorMsg: errorMsgs){	
%>
                <li style="color:red"> <%= errorMsg%></li>		
<%          }		
            user = (User)request.getAttribute("user");	
	}
%>
                <br>
                <p>Username:</p>
                <input type="text" name="username" placeholder="Enter Username" value="<%=user.getUsername()%>" required>
                <p>Password:</p>
                <input type="password" name="password" placeholder="Enter Password" required>
                <input type="submit" name="submit" value="Login">
                <a href="#">Forgot Password</a>   <br><br>
                <a href="signup.jsp">Not a member?Sign Up.</a>
            </form>
        </div>
    </div>
    </body>
</html>
