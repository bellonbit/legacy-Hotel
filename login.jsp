<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
try{
	
String email_id = request.getParameter("email_id");
String pswd = request.getParameter("pwd");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/megh", "root", "root"); 

Statement st= con.createStatement(); 
ResultSet rs;
rs = st.executeQuery("select * from customers where Email='"+email_id+"' and Pasword = '"+pswd+"'");

if (rs.next()) {
	// getting the value of the first column and first row in the resultset
	String userdbName = rs.getString(1);
	// setting the value of username to pass that to success.jsp page to display.
	session.setAttribute("username",userdbName);
	 response.sendRedirect("Success.jsp");	
  } 
else{
	//to set error message and send response to login request to sigin.jsp page to display
	request.setAttribute("errorMessage", "Invalid user or password");
	//out.println("invalid login details");
	request.getRequestDispatcher("signin.jsp").forward(request, response);

}
}


catch(Exception e){
	
	 out.println(e);
}
%>



</body>
</html>