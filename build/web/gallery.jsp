<!DOCTYPE html>
<html>
<head>
	<title>Gallery</title>
	<link rel="stylesheet" type="text/css" href="nav.css"> 
	<link rel="stylesheet" type="text/css" href="gallery.css">     
	<script>
		function BreakInDetected()
		{
			alert('Security Violation: You cannot right click on this page.')
			return false
		}
		function NetscapeBrowser(e)
		{
			if(document.layers||document.getElementById&&!document.all)
			{
				if(e.which==2 || e.which==3)
				{
					BreakInDetected()
					return false
				}
			}
		}
		function InternetExplorerBrowser()
		{
			if(event.button==2)
			{
				BreakInDetected()
				return false
			}
		}
		if(document.layers)
		{
			document.capturEvents(Event.MOUSEDOWN)
			document.onmousedown=NetscapeBrowser()
		}
		else if(document.all&&!document.getElementById)
		{
			document.onmousedown=InternetExplorerBrowser()
		}
		document.oncontextmenu=new Function("BreakInDetected(); return false")
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
	<a class="active" href="gallery.jsp">Gallery</a>
	<a href="crewD.jsp">Crew</a>
	<a href="bookc.jsp">Booking&Cancellation</a>
	<a href="feedback.jsp">FeedBack</a>
	  <a href="aboutus.jsp">About</a>
	<a href="profile.jsp">My Profile</a>
	</div>
	</div>
	<div class="main">
	<br><br><br><br><br><br><br>
	<table width="100%" border="0">
<tbody>

<tr vAlign="top">
	<td width="400">
	<div class="zoomin">
	<a>
		<img src="images/sundarban1.jpg" border="2"/>
	</a>
	</div>
	</td>
	<td width="400">
	<div class="zoomin">
	<a>
		<img src="images/hgad4.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
	<td width="400">
	<div class="zoomin">
	<a>
		<img src="images/web36.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
	<td width="400">
	<div class="zoomin">
	<a>
		<img src="images/treehouse.gif" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
</tr>


<tr>	
	<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/cycle.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
	<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/watertrek.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
	<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/tour3.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
	<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/tadoba2.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
</tr>


<tr>
	<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/dudhsagar.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
	<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/web32.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
	<td>
	<div class="zoomin">
	<a>
		<img src="images/ele.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
	<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/zanskar.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
</tr>


<tr>
	<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/web33.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
	<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/pawna5.png" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
		<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/web30.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
	<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/tour1.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
</tr>

<tr>
	<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/web31.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
	<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/scuba.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
		<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/web35.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
	<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/pala1.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
</tr>

<tr>
	<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/web37.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
	<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/tour2.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
		<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/web34.png" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
	<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/pawna6.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
</tr>

<tr>
	<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/pala3.jfif" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
	<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/sundarban2.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
		<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/pangong.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
	<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/web18.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
</tr>

<tr>
	<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/4.jfif" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
	<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/andharban.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
		<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/3.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
	<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/d2.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
</tr>

	<td width="50">
	<div class="zoomin">
	<a>
		<img onclick="window.open(this.src)" src="images/birds.jpg" border="2"/>
	</a>
	</div>
	</td>
	<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/biking.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
		<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/dar3.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
	<td width="50">
	<div class="zoomin">
	<a>
		<img src="images/3.jpg" border="2" onclick="window.open(this.src)"/>
	</a>
	</div>
	</td>
</tr>


</div>
</body>
</html>


	
