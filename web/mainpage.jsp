<%@page import="blog.model.User"%>
<!DOCTYPE html>
<html>
<head>
	<title>Adventure Blog</title>
	<link rel="stylesheet" type="text/css" href="nav.css">  
	<link rel="stylesheet" type="text/css" href="mainpage.css">
</head>
<body>
<%
    if(request.getAttribute("user")!= null){
       User user = new User();
        user = (User)request.getAttribute("user");
        String username = user.getUsername();
        session.setAttribute("username",username); 
    }   
%>
	
	<div class="navbar">
		<center>
		<br>
		<font size="20">
			<span style="color:red;size:15;font-family:Segoe Script;text-shadow: 3px 3px 5px red;">Destination</span>
			<span style="color:lightblue;size:15;font-family:Segoe Script;text-shadow: 3px 3px 5px lightblue;">Seekers.</span>
		</font>
		</center>
	<div class="topnav">
	<a class="active"  href="mainpage.jsp">Home</a>
	<a href="camps.jsp">Predestined Camps</a>
        <a href="booktours.jsp">Book Tours</a>
	<a href="gallery.jsp">Gallery</a>
	<a href="crewD.jsp">Crew</a>
	<a href="bookc.jsp">Booking&Cancellation</a>
	<a href="feedback.jsp">FeedBack</a>
	<a  href="aboutus.jsp">About</a>
	<a href="profile.jsp">My Profile</a>
	</div>
	</div>

	<div class="main">
	<br><br><br><br><br><br>
	<div class="bg-image"></div>
	<div class="slideshow-container">
	<br><br><br>

	<div class="mySlides fade">
 	 <div class="numbertext">1 / 4</div>
 	 <img src="images/dudhsagar.jpg" style="width:100%">
 	 <div class="text">Dudhsagar Waterfall</div>
	</div>

	<div class="mySlides fade">
	  <div class="numbertext">2 / 4</div>
 	 <img src="images/tadoba1.jpeg" style="width:100%">
 	 <div class="text">Tadoba National Park</div>
	</div>

	<div class="mySlides fade">
	  <div class="numbertext">3 / 4</div>
  	<img src="images/scuba.jpg" style="width:100%">
	  <div class="text">Scuba Diving at Maldives. </div>
	</div>

	<div class="mySlides fade">
 	 <div class="numbertext">4 / 4</div>
 	 <img src="images/forest2.jpg" style="width:100%">
 	 <div class="text">Forests in India</div>
	</div>

	</div>
<br>

	<div style="text-align:center">
	  <span class="dot"></span> 
 	 <span class="dot"></span> 
 	 <span class="dot"></span> 
	<span class="dot"></span> 
	</div>

	<script>
		var slideIndex = 0;
		showSlides();

		function showSlides() 
		{
		  var i;
		  var slides = document.getElementsByClassName("mySlides");
		  var dots = document.getElementsByClassName("dot");
		  for (i = 0; i < slides.length; i++)
		 {
  			  slides[i].style.display = "none";  
		  }
		  slideIndex++;
		  if (slideIndex > slides.length) {slideIndex = 1}    
		  for (i = 0; i < dots.length; i++) 
		  {
   			 dots[i].className = dots[i].className.replace(" active", "");
		  }
		  slides[slideIndex-1].style.display = "block";  
 		 dots[slideIndex-1].className += " active";
		  setTimeout(showSlides, 3000); // Change image every 3 seconds
		}
	</script>
	<h2 align="center"><u><span style="color:white">About holidays</span></u></h2>
	<font size="4">
				<span style="color:white;font-family:Comic Sans MS">
	<p>
		Destination Seekers is a brand synonymous with the best in adventure, wildlife and leisure camping for children. ‘
		Fun and Learn’ is the underlying motto of all Destination Seekers camps. 
		The camps are so well designed and conducted that nervous first time campers get invariably converted into lifetime camping enthusiasts. 
		Their parents observe the safety precautions taken by us, the care that we take of their children and the professionalism in the overall conduct of the camps, and have no apprehensions about entrusting their children to us year after year.
		Camping bestows many benefits to the participants. The campers are physically and mentally active throughout the duration.
		Socially, they are constantly interacting with the other children they have met for the first time – playing as a team, sharing the lodging facilities, sitting down together for their meals, showing off their varied talents during the campfire.
		All this leads to a feeling of self-worth, self-confidence and independence that translates into maturity.
 		And all this while they are having a great time – quite different from the type of fun they have at home or at the school.
		Destination Seekers has a large platter of camps designed for various interests and various age groups.
	</p></span><br><br>
	</div>
</body>
</html>