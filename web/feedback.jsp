<!DOCTYPE html>
<html>
<head>
	<title>Feedback</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="nav.css"> 
	<link rel="stylesheet" type="text/css" href="feedback.css">   
	<script>
		window.status="Please give an honest feedback so as to improve the quality of service we provide.";
	</script>
</head>
<body>
<div class="navbar">
	<center>
	<br>
	<font size="20">
		<span style="color:red;size:15;font-family:Segoe Script;text-shadow: 3px 3px 5px red;">Destination</span>
		<span style="color:lightblue;size:15;font-family:Segoe Script;text-shadow: 3px 3px 5px lightblue;">Seekers.</span>
	</font>
	</center>
	<div class="topnav">
		<a href="mainpage.jsp">Home</a>
		<a href="camps.jsp">Predestined Camps</a>
                <a href="booktours.jsp">Book Tours</a>
		<a href="gallery.jsp">Gallery</a>
		<a href="crewD.jsp">Crew</a>
		<a href="bookc.jsp">Booking&Cancellation</a>
		<a class="active" href="feedback.jsp">FeedBack</a>
		<a href="aboutus.jsp">About</a>
		<a href="profile.jsp">My Profile</a>
	</div>
</div>
	<div class="main">
	<br><br><br><br><br><br><br><br><br><br>
	<center>

            <form method="POST">
		<p>
		<FONT face="Bell MT" SIZE="6" COLOR="black">
                    <i><b>Help us to grow better.</i></b><br>
<%
    //Object uname = session.getAttribute("username");
    //String username = String.valueOf(uname);
    //request.setAttribute("username",username);
    if(request.getAttribute("errorMsgs") != null){
        java.util.List<String> errorMsgs = (java.util.List<String>)request.getAttribute("errorMsgs");
        for(String errorMsg: errorMsgs){	
%>
             <li style="color:red; background: wheat"> <%= errorMsg%></li>
<%            
        }
    }
%>
		</font>
		<br>
                <FONT face="Oswald" SIZE="5" COLOR="black">
                    Name: &emsp;&ensp;<input type="text" id="cname" name="cname" placeholder="Your Name.." required><br>
                    Review:&emsp;<input type="text" id="rev" name="rev" placeholder="Your Review.." required><br>
                    <button class="button" formaction="AddReviewServlet"><span>Post</span></button>
		</font>
		</p>
            </form>
            <form>
                    <button class="button" formaction="viewreview.jsp"><span>View All</span></button>
            </form></center>
</body>
</html>
