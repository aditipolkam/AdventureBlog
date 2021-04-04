<%-- 
    Document   : listbookedtours
    Created on : 8 Jun, 2020, 7:37:00 PM
    Author     : Aditi Polkam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booked tours</title>
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
	<a class="active" href="listbookedtours.jsp">Booked tours</a>
        <a href="listusers.jsp">List of Users</a>
        <a href="addtours.jsp">Add new tours</a>
	</div>
    </div>
        <br><br><br><br><br><br><br><br><br>

        <center>
            <table border='1' cellpadding='5' cellspacing='0' width='400'>
                <tr bgcolor='#CCCCFF' align='center' valign='center' height='20'>
                    <td><h3>Destination Seekers: Upcoming bookings.</h3></td>
                </tr>
            </table>
    <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/adventureblog"  
     user="root"  password="aditi07"/>  
  
        <sql:query dataSource="${db}" var="rs">  
            select* from toursbooked order by username;  
        </sql:query>
            <br><br>
            <table width='80%' border='1'>
            <thead align='center'>
                <th>Transaction ID </th>
                <th>Tour ID </th>
                <th>Destination </th>
                <th>Username </th>
                <th>Seats</th>
                <th>Total Amount(Rs) </th>
            </thead>
            <c:forEach var="bk" items="${rs.rows}">  
                <tr>  
                    <td align="center"><c:out value="${bk.transaction_id}"/></td>  
                    <td align="center"><c:out value="${bk.tour_id}"/></td>  
                    <td align="center"><c:out value="${bk.destination}"/></td>  
                    <td align="center"><c:out value="${bk.username}"/></td>  
                    <td align="center"><c:out value="${bk.seats}"/></td>
                    <td align="center"><c:out value="${bk.totalamount}"/></td>                  
                </tr>  
            </c:forEach>
        </table>
        </center>
    </body>
</html>
