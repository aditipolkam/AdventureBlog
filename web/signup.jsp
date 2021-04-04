<%@page import="blog.model.User"%>
<!DOCTYPE html>
<html>
<head>
	<title>Sign Up form</title>
	<link rel="stylesheet" type="text/css" href="nav.css"> 
	<link rel="stylesheet" type="text/css" href="signup.css">  
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
<br><br><br><br><br>
<form action="AddUserServlet" method="POST">
    <div class="container">
      <h1>Sign Up</h1>
      <p>Please fill in this form to create an account.</p><br>
<%
	User user = new User();
	if(request.getAttribute("errorMsgs") != null){
            java.util.List<String> errorMsgs = (java.util.List<String>)request.getAttribute("errorMsgs");
            for(String errorMsg: errorMsgs){	
%>
                <li style="color:red; background: wheat"> <%= errorMsg%></li>		
<%          }		
            user = (User)request.getAttribute("user");	
	}
%>
      <hr>
      <label for="cname"><b>Name</b></label>
      <input type="text" placeholder="Enter your name" name="cname" value="<%=user.getCname()%>" required>

      <label for="email"><b>Email</b></label>
      <input type="text" placeholder="Enter Email" name="email" value="<%=user.getEmail()%>" required>

	<label for="contact"><b>Contact</b></label>
      <input type="text" placeholder="Enter your mobile number" name="contact" value="<%=user.getContact()%>" required>

	<label for="email"><b>Sex</b></label><br>
	<input type="radio" name="sex" value="Male" />Male &emsp; &emsp; &emsp;
	<input type="radio" name="sex" value="Female" />Female  &emsp; &emsp; &emsp;
	<input type="radio" name="sex" value="Other" />Other<br> 

	<label for="username"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="username" value="<%=user.getUsername()%>"required>
      
	<label for="password"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password" required>

      <label for="cpwd"><b>Confirm Password</b></label>
      <input type="password" placeholder="Repeat Password" name="cpwd" required>

      <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

      <div class="clearfix">
        <button type="submit" class="signupbtn">Sign Up</button>
	<button type="button" class="cancelbtn">Cancel</button>
      </div>
    </div>
  </form>
</body>
</html>
