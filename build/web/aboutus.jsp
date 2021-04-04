<!doctype html>
<html>
<head>
	<title>About Us</title>
	<link rel="stylesheet" type="text/css" href="nav.css">
	<link rel="stylesheet" type="text/css" href="aboutus.css">      
	<script>
		function Pune()
		{
			var x = 'admin&DSholidays*c_o_m'
			var y = 'mai'
			var z = 'lto'
			var s = '?subject = Customer Inquiry'
			x = x.replace('&','@')
			x = x.replace('*','.')
			x = x.replace('_','')
			x = x.replace('_','')
			var b = y + z + ':' + x + s		
			window.location = b
		}
		
		function Mumbai()
		{
			var x = 'officemb&DSholidays*c_o_m'
			var y = 'mai'
			var z = 'lto'
			var s = '?subject = Customer Inquiry'
			x = x.replace('&','@')
			x = x.replace('*','.')
			x = x.replace('_','')
			x = x.replace('_','')
			var b = y + z + ':' + x + s		
			window.location = b
		}
	</script>
        <style>
body 
{
    margin: 0;
    padding: 0;
    background-image: url(images/web6.jpg);
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
    font-family: Courier New;
}
input 
{
    border-radius: 10px;
    background-color: olive;
    border: none;
    color:black;
    text-align: center;
    font-size: 15px;
    padding: 8px;
    width: 100px;
    transition: all 0.5s;
    cursor: pointer;
    margin: 5px;
}
            </style>
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
	<a href="feedback.jsp">FeedBack</a>
	<a  class="active" href="aboutus.jsp">About</a>
	<a href="profile.jsp">My Profile</a>
	</div>
	</div>
	
	<div class="main">
	<h1><span style="color:darkgreen;font-family:lucida calligraphy">Contact.</span></h1>
		<br><br>
	<table width="100%" border="0">
	<tbody>
	<tr valign="top">
	<td width="950">
		<h2><b><a onmouseover="document.cover.src='images/office1.jpg' ">PUNE Head Office</a></b></h2>
		<h3>131, Poornima Towers,<br>
		397 Shankarsheth Road,Pune 411 037<br>
		Tel / Fax: (020) 6649 9999<br>
		Working Hours: 9.00 am to 6.00 pm (Sunday closed.)</h3>
		<center><input type="button" value="Mail Us" onclick="Pune()"></center><br>
	</td>
	<td rowspan="2">
		<a><br><br><br><br><br><br>
		    <img height="250" src="images/office1.jpg" width="350" border="2" name="cover">
		</a>
	</td>
	<tr valign="top">
	<td width="750">
		<h2><b><a onmouseover="document.cover.src='images/office2.jpg' ">MUMBAI Office</a></b></h2>
		<h3>65, Gr.Floor, Kudalkar Building,<br>
		 Opp.SBI, Near Ovenfresh, Ranade Road.<br>
		 Shivaji park, Dadar (W), Mumbai 400028<br>
		Tel / Fax: 8879366191<br>
		Working Hours: 10.00 am to 6.00 pm (Sunday closed.)<br>
		</h3>
        <center><input type="button" value="Mail Us" onclick="Mumbai()"></center>
	<td>
	</tr>
	</tbody>
	</table>
	<div>
</body>
</html>
