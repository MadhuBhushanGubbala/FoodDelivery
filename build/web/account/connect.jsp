<%@page import="java.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");  
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/food","root","");  
System.out.println("Connected");
%>