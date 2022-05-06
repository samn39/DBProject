<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
<%
	String article = request.getParameter("article");   
	String size = request.getParameter("size");   
	String brand = request.getParameter("brand");   
	String seller = (String)session.getAttribute("username");
	 
    Class.forName("com.mysql.jdbc.Driver");
    ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();
    Statement st = con.createStatement();
    
   
    //session.getAttribute("username", username); 
    st.executeUpdate("INSERT INTO items (clothing_type, size, brand, seller) VALUES ('" + article + "', '" + size + "', '" + brand + "', '" + seller + "')");
    out.println("<h3> Item Submitted Successfully");
	out.println("<form action='loginPage.jsp'><input type='submit' value='Login'/></form>");
   
%>
</body>
</html>