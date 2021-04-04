<%-- 
    Document   : addTours
    Created on : 8 Jun, 2020, 12:56:15 PM
    Author     : Aditi Polkam
--%>

<%@page import="blog.model.Tour"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add new Tour</title>
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
	<a href="adminsection.jsp">Home</a>
	<a href="listtours.jsp">Upcoming tours</a>
	<a href="listbookedtours.jsp">Booked tours</a>
        <a href="listusers.jsp">List of Users</a>
        <a class="active" href="addtours.jsp">Add new tours</a>
	</div>
    </div>
        <br><br><br><br><br><br><br><br><br>

        <center>
            <table border='1' cellpadding='5' cellspacing='0' width='400'>
                <tr bgcolor='#CCCCFF' align='center' valign='center' height='20'>
                    <td><h3>Destination Seekers: Add a new tour's details.</h3></td>
                </tr>
            </table>
            <br><br>
<%
	Tour tour = new Tour();
	if(request.getAttribute("errorMsgs") != null){
            java.util.List<String> errorMsgs = (java.util.List<String>)request.getAttribute("errorMsgs");
            for(String errorMsg: errorMsgs){	
%>
                <li style="color:red"> <%= errorMsg%></li>		
<%          }		
            tour = (Tour)request.getAttribute("tour");	
	}
        if(request.getAttribute("aStatus") != null){
        Object status = request.getAttribute("aStatus");
%>
             <H2 style="color:blue"><%=status%></h2>
<%             
    }
%>
    <form method="POST" action="AddTourServlet">
        <table>
            <tr>
                <td>Tour ID:</td><td><input type="text" name="tourid" value="<%=tour.getTourId()%>" required/><br></td>
            </tr>        
            <tr>
                <td>Destination:</td><td><input type="text" name="destination" value="<%=tour.getDestination()%>" required/><br></td>
            </tr>
            <tr>
                <td>Duration:</td><td><input type="text" name="duration" value="<%=tour.getDuration()%>" required/><br></td>
            </tr>
            <tr>
                <td>Departure Place:</td><td><input type="text" name="deptplace" value="<%=tour.getDeparturePlace()%>" required/><br></td>
            </tr>
            <tr>
                <td>Departure Date:</td><td><input type="date" name="deptdate" value="<%=tour.getDepartureDate()%>" required/><br></td>
            </tr>
            <tr>
                <td>Amount:</td><td><input type="number" name="amount" value="<%=tour.getAmount()%>" required/><br></td>
            </tr>
            <tr>
                <td colspan="2">
                    <center><input type="submit" value="Add"/><input type="reset" value="Clear"/></center>
                </td>
            </tr>
        </table>
    </form>
    </center>
    </body>
</html>
