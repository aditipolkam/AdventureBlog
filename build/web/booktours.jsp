<%-- 
    Document   : booktours
    Created on : 12 Jun, 2020, 6:10:33 PM
    Author     : Aditi Polkam
--%>

<%@page import="blog.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book tours</title>
        <link rel="stylesheet" type="text/css" href="nav.css">  
	<link rel="stylesheet" type="text/css" href="booktours.css">
        <style>
            body 
{
    margin: 0;
    padding: 0;
    background-image: url(images/web7.jpg);
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
    font-family: Courier New;
}
        </style>
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
	<a href="mainpage.jsp">Home</a>
                    <a href="camps.jsp">Predestined Camps</a>'
                    <a class="active" href="booktours.jsp">Book Tours</a>
                    <a href="gallery.jsp">Gallery</a>
                    <a href="crewD.jsp">Crew</a>
                    <a href="bookc.jsp">Booking&Cancellation</a>
                    <a href="feedback.jsp">FeedBack</a>
                    <a href="aboutus.jsp">About</a>
                    <a href="profile.jsp">My Profile</a>
	</div>
    </div>
        <br><br><br><br><br><br><br><br><br>
    <center>
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/adventureblog"  
     user="root"  password="aditi07"/>  
  
        <sql:query dataSource="${db}" var="rs">  
            select* from tours;  
        </sql:query>
            
<%

	if(request.getAttribute("errorMsgs") != null){
            java.util.List<String> errorMsgs = (java.util.List<String>)request.getAttribute("errorMsgs");
            for(String errorMsg: errorMsgs){	
%>
                <li style="color:red"> <%= errorMsg%></li>		
<%          }		
	}
%>
            <form method="POST" action="BookTourServlet">
            <table width='80%' border='1'>
            <thead align='center'>
                <th>Tour ID </th>
                <th>Destination </th>
                <th>Duration </th>
                <th>Departure Place </th>
                <th>Departure Date(yyyy-mm-dd)</th>
                <th>Amount(Rs) </th>
                <th>Book</th>
            </thead>
            <c:forEach var="tour" items="${rs.rows}">  
                <tr>  
                    <td align="center"><c:out value="${tour.tour_id}"/></td>  
                    <td align="center"><c:out value="${tour.destination}"/></td>  
                    <td align="center"><c:out value="${tour.duration}"/></td>  
                    <td align="center"><c:out value="${tour.dep_place}"/></td>  
                    <td align="center"><c:out value="${tour.dep_date}"/></td>
                    <td align="center"><c:out value="${tour.amount}"/></td>
                    <td align="center"><input type="radio" name="tourselection" value="${tour.tour_id}"/></td>
                </tr>  
            </c:forEach>
        </table>
                <br>
                Seats:<input type="number" name="seats" /><br><br>
                <input type="submit" value="Book" name="submit"/>
            </form>
    </center>
    </body>
</html>
