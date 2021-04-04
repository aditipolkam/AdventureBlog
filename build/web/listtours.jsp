<%-- 
    Document   : addTours
    Created on : 8 Jun, 2020, 12:56:15 PM
    Author     : Aditi Polkam
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tours</title>
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
	<a class="active" href="listtours.jsp">Upcoming tours</a>
	<a href="listbookedtours.jsp">Booked tours</a>
        <a href="listusers.jsp">List of Users</a>
        <a href="addtours.jsp">Add new tours</a>
	</div>
    </div>
        <br><br><br><br><br><br><br><br><br>

        <center>
            <table border='1' cellpadding='5' cellspacing='0' width='400'>
                <tr bgcolor='#CCCCFF' align='center' valign='center' height='20'>
                    <td><h3>Destination Seekers: Upcoming Tours.</h3></td>
                </tr>
            </table>
        <br><br>
    <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/adventureblog"  
     user="root"  password="aditi07"/>  
  
        <sql:query dataSource="${db}" var="rs">  
            select* from tours order by dep_date;  
        </sql:query>
            
<%
    if(request.getAttribute("errorMsgs") != null){
        java.util.List<String> errorMsgs = (java.util.List<String>)request.getAttribute("errorMsgs");
        for(String errorMsg: errorMsgs){	
%>
             <li style="color:red"> <%= errorMsg%></li>
<%            
        }
    }
    if(request.getAttribute("dStatus") != null){
        Object status = request.getAttribute("dStatus");
%>
             <H2 style="color:blue"><%=status%></h2>
<%             
    }
%>
            <form method="POST" action="DeleteTourServlet" > 
            <table width='80%' border='1'>
            <thead align='center'>
                <th>Tour ID </th>
                <th>Destination </th>
                <th>Duration </th>
                <th>Departure Place </th>
                <th>Departure Date(yyyy-mm-dd)</th>
                <th>Amount(Rs) </th>
                <th>Delete</th>
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
            <br><br>
            <input type="submit" name="delete" value="Delete"/>
            </form>
            </center>
        </body>
</html>
