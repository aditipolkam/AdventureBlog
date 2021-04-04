<%@ page import="java.sql.*"%>
<html>
<head>
	<title>Reviews</title>
	<link rel="stylesheet" type="text/css" href="nav.css"> 
	<style>
	body
	{
		margin:0;
		padding:0;
		background-image: url(images/web8.jpg);
		background-repeat: no-repeat;
		background-attachment: fixed;
		background-size: cover;
	}
	p {
  	border-radius: 10px;
  	background-color: #f2f2f2;
  	padding: 10px;
  	width: 30%;
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
	</center><br>
</div>
<br><br><br><br><br>
       
<%
String path="jdbc:mysql://localhost:3306/adventureblog";
String user = "root";
String pass="aditi07";
String sql; 
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection(path,user,pass);
	sql = "select *from reviews";
	Statement st=conn.createStatement();
	ResultSet rs=st.executeQuery(sql);
	while(rs.next())
	{
%>
	<div class="main">
		<p>
		<FONT face="Bell MT" SIZE="5" COLOR="black">
		<b><%= rs.getString(2)%></b><br>
		</font>
		<FONT face="Bell MT" SIZE="4" COLOR="black">
		<%= rs.getString(3)%><br>
		</font>	
		</p>
	</div>		
<%
	}
}
catch(Exception e)
{
	out.print(e);
}
%>
</body>
</html>