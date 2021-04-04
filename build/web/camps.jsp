<%-- 
    Document   : camps
    Created on : 11 Jun, 2020, 4:27:13 PM
    Author     : Aditi Polkam
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Predestined Camps</title>
	<link rel="stylesheet" type="text/css" href="nav.css">   
	<link rel="stylesheet" type="text/css" href="aboutus.css">  
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
                    <a class="active" href="camps.jsp">Predestined Camps</a>
                    <a href="booktours.jsp">Book Tours</a>
                    <a href="gallery.jsp">Gallery</a>
                    <a href="crewD.jsp">Crew</a>
                    <a href="bookc.jsp">Booking&Cancellation</a>
                    <a href="feedback.jsp">FeedBack</a>
                    <a href="aboutus.jsp">About</a>
                    <a href="profile.jsp">My Profile</a>
            </div>
        </div>
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/adventureblog"  
     user="root"  password="aditi07"/>  
  
        <sql:query dataSource="${db}" var="rs">  
            select* from tours;  
        </sql:query>
<br><br><br><br><br><br><br><br><br>
<FONT face="Oswald" SIZE="4" COLOR="black">
    <center>
        <form method="POST" action="ViewServlet">
<%

	if(request.getAttribute("errorMsgs") != null){
            java.util.List<String> errorMsgs = (java.util.List<String>)request.getAttribute("errorMsgs");
            for(String errorMsg: errorMsgs){	
%>
                <center><li style="color:red"> <%= errorMsg%></li>	</center>	
<%          }		
	}
%><br>
            <table border='1' width='80%' bgColor="white">
                <thead align='center'>
                    <th>Tour ID </th>
                    <th>Destination </th>
                    <th>Duration </th>
                    <th>Departure Place </th>
                    <th>Departure Date(yyyy-mm-dd)</th>
                    <th>Amount(Rs) </th>
                    <th>View</th>
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
            </table><br>
             <input type="submit" name="submit" value="Submit"/>
        </form>
    </center>
</font>
</body>
</html>
