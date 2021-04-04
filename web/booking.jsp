<%-- 
    Document   : booking
    Created on : 13 Jun, 2020, 11:09:18 AM
    Author     : Aditi Polkam
--%>

<%@page import="blog.model.User"%>
<%@page import="blog.model.Tour"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="booking.css">  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tour Booking</title>
        <style>
body 
{
    margin:0;
    padding:0;
    background-image: url(images/web1.jpg);
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
}
        </style>
    </head>
    <body>
    
<br><br>
           <table border='1' cellpadding='5' cellspacing='0' width='400'>
                <tr bgcolor='#CCCCFF' align='center' valign='center' height='20'>
                    <td><h3><br>Destination Seekers: Review Information.</h3></td>
                </tr>
           </table>
           <br><br>     
        <form method="POST" action="BookServlet">
<%
	Tour tour = new Tour();
        tour = (Tour)session.getAttribute("tour");
        
        User user = new User();
        user = (User)session.getAttribute("user");
        
        Object seats = session.getAttribute("seats");
        Object amount = session.getAttribute("amount");
%>

        <h2>User Details:</h2>
        <table width="40%">
            <tr>
                <td><b>Username:</b></td>
                <td><%=user.getUsername()%></td>
            </tr>        
            <tr>
                <td><b>Customer Name:</b></td>
                <td><%=user.getCname()%></td>
            </tr>
            <tr>
                <td><b>Email:</b></td>
                <td><%=user.getEmail()%></td>
            </tr>
            <tr>
                <td><b>Contact:</b></td>
                <td><%=user.getContact()%></td>
            </tr>           
        </table>
        <h2>Tour Details:</h2>
        <table width="33%">
            <tr>
                <td><b>Tour ID:</b></td>
                <td><%=tour.getTourId()%></td>
            </tr>        
            <tr>
                <td><b>Destination:</b></td>
                <td><%=tour.getDestination()%></td>
            </tr>
            <tr>
                <td><b>Duration:</td>
                <td><%=tour.getDuration()%></td>
            </tr>
            <tr>
                <td><b>Departure Place:</b></td>
                <td><%=tour.getDeparturePlace()%></td>
            </tr>
            <tr>
                <td><b>Departure Date:</b></td>
                <td><%=tour.getDepartureDate()%></td>
            </tr>
            <tr>
                <td><b>Seats:</b></td>
                <td><%=seats%></td>
            </tr>
            <tr>
                <td><b>Total Amount:</b></td>
                <td><%=amount%> rs</td>
            </tr>
            
        </table>
            <br>
            &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
            <input type="submit" value="Book"/>
    </form>
    </body>
</html>
