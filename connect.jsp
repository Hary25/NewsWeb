<%@ page import="java.sql.*" %>
<%@page import="java.sql.Statement"%> 
<%@page import="java.sql.Connection"%>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con =  DriverManager.getConnection("jdbc:mysql://localhost/news", "root","");

	Statement st = con.createStatement(1004,1008);
	Statement st1 = con.createStatement(1004,1008);
	Statement st2 = con.createStatement(1004,1008);
	Statement st3 = con.createStatement(1004,1008);
	Statement st4 = con.createStatement(1004,1008);
%>


