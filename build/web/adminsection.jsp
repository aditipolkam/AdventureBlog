<%-- 
    Document   : adminsection
    Created on : 8 Jun, 2020, 12:37:14 PM
    Author     : Aditi Polkam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Section</title>
        <link rel="stylesheet" type="text/css" href="nav.css">  
	<link rel="stylesheet" type="text/css" href="adminsection.css">
    </head>
    <body bgColor='white'>
    <div class="navbar">
	<center>
		<br>
		<font size="20">
			<span style="color:red;size:15;font-family:Segoe Script;text-shadow: 3px 3px 5px red;">Destination</span>
			<span style="color:lightblue;size:15;font-family:Segoe Script;text-shadow: 3px 3px 5px lightblue;">Seekers.</span>
		</font>
	</center>
        <div class="topnav">
	<a class="active"  href="adminsection.jsp">Home</a>
	<a href="listtours.jsp">Upcoming tours</a>
	<a href="listbookedtours.jsp">Booked tours</a>
        <a href="listusers.jsp">List of Users</a>
        <a href="addtours.jsp">Add new tours</a>
	</div>
    </div>
        <br><br><br><br><br><br><br><br><br>

        <center>
            <table border='1' cellpadding='5' cellspacing='0' width='400'>
                <tr bgcolor='#CCCCFF' align='center' valign='center' height='20'>
                    <td><h3>Destination Seekers: Admin Section</h3></td>
                </tr>
            </table>
            <br><br>
            <form>
            <button value="logout" formaction="index.jsp">Log Out</button>
            </form>
        </center>
    </body>
</html>
