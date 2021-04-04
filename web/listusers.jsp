<%-- 
    Document   : listusers
    Created on : 8 Jun, 2020, 6:43:04 PM
    Author     : Aditi Polkam
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="blog.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User's List</title>
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
        <a class="active" href="listusers.jsp">List of Users</a>
        <a href="addtours.jsp">Add new tours</a>
	</div>
    </div>
        <br><br><br><br><br><br><br><br><br>

        <center>
            <table border='1' cellpadding='5' cellspacing='0' width='400'>
                <tr bgcolor='#CCCCFF' align='center' valign='center' height='20'>
                    <td><h3>Destination Seekers: All users registered.</h3></td>
                </tr>
            </table>
        </center><br><br>
<%
    String connectionURL = "jdbc:mysql://localhost:3306/adventureblog";
    String dbId = "root";
    String dbPass = "aditi07";
    Connection con = null;
    PreparedStatement ptmt = null;
    Statement stmt = null;
    ResultSet rs = null;
    List<User> users = new ArrayList<User>();
    try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection(connectionURL,dbId,dbPass); 
		stmt = con.createStatement();
                rs = stmt.executeQuery("select *from users");
                
                while(rs.next()){
                    User user = new User();
                    user.setUsername(rs.getString("username"));
                    user.setCname(rs.getString("cname"));
                    user.setGender(rs.getString("gender"));
                    user.setEmail(rs.getString("email"));
                    user.setContact(rs.getString("contact"));
                    users.add(user);    //add in the list of type User
                }
            } 
            catch (ClassNotFoundException ex) {
                
            } catch (SQLException ex) {
                
            } catch (InstantiationException ex) {
                
            } catch (IllegalAccessException ex) {
                
            }
%>	
<center>
        <table width='80%' border='1'>
            <thead align='center'>
                <th>Username</th>
                <th>Customer Name</th>
                <th>Gender</th>
                <th>Email</th>
                <th>Contact</th>
            </thead>
<%
        for(User user:users){
%>	
            <tr align='center'>
                    <td><%=user.getUsername()%></td>
                    <td><%=user.getCname()%></td>
                    <td><%=user.getGender()%></td>
                    <td><%=user.getEmail()%></td>
                    <td><%=user.getContact()%></td>	
            </tr>
<%
}
%>
        </table>
</center>
    </body>
</html>
