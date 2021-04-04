<%-- 
    Document   : profile
    Created on : 11 Jun, 2020, 11:07:10 AM
    Author     : Aditi Polkam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Profile</title>
        <link rel="stylesheet" type="text/css" href="nav.css">   
	<link rel="stylesheet" type="text/css" href="profile.css">  
        <style>
            body 
{
    margin: 0;
    padding: 0;
    background-image: url(images/001.jpg);
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
    font-family: Courier New;
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
                    <a href="camps.jsp">Predestined Camps</a>'
                    <a href="booktours.jsp">Book Tours</a>
                    <a href="gallery.jsp">Gallery</a>
                    <a href="crewD.jsp">Crew</a>
                    <a href="bookc.jsp">Booking&Cancellation</a>
                    <a href="feedback.jsp">FeedBack</a>
                    <a href="aboutus.jsp">About</a>
                    <a class="active" href="profile.jsp">My Profile</a>
            </div>
        </div>
        <br><br><br><br>
    <center>
        <% String username = String.valueOf(session.getAttribute("username"));
            %>
        <h1>Tours Booked By You:</h1>
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/adventureblog"  
     user="root"  password="aditi07"/>  
        
        <sql:query dataSource="${db}" var="rs">  
                    select* from toursbooked where username = ?; 
                    <sql:param value="${username}"/>
        </sql:query>
                    
            <br><br>
            <table width='80%' border='1' bgColor="white">
            <thead align='center'>
                <th>Transaction ID </th>
                <th>Tour ID </th>
                <th>Destination </th>
                <th>Seats</th>
                <th>Total Amount(Rs) </th>
            </thead>
            <c:forEach var="bk" items="${rs.rows}">  
                <tr>  
                    <td align="center"><c:out value="${bk.transaction_id}"/></td>  
                    <td align="center"><c:out value="${bk.tour_id}"/></td>  
                    <td align="center"><c:out value="${bk.destination}"/></td>   
                    <td align="center"><c:out value="${bk.seats}"/></td>
                    <td align="center"><c:out value="${bk.totalamount}"/></td>                  
                </tr>  
            </c:forEach>
        </table>  
        <form>
            <br><br>
            <button value="logout" formaction="index.jsp">Log Out</button>
        </form>
    </center>
    </body>
</html>
