<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String fname = request.getParameter("Firstname");
String lname = request.getParameter("Lastname");
String email = request.getParameter("Email");
String password = request.getParameter("Password");
String phonenumber = request.getParameter("Phonenumber");
String address = request.getParameter("Address");
String zipcode = request.getParameter("Zipcode");
String city = request.getParameter("City");
String state = request.getParameter("State");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/megh", "root", "root"); 

Statement st= con.createStatement(); 
int i = st.executeUpdate("insert into customers (Firstname , Lastname , Email , Pasword ,PhoneNumber, Address , City , State , Zipcode ) values ('"+fname+"','"+lname+"','"+email+"','"+password+"','"+phonenumber+"','"+address+"','"+city+"','"+state+"','"+zipcode+"')"); 
out.println("Registered");
%>
</body>
</html>