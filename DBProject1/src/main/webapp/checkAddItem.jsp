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
	String username = session.getAttribute("username").toString();
	 
    Class.forName("com.mysql.jdbc.Driver");
    ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();
    Statement st = con.createStatement();
    ResultSet rs;
   
        session.setAttribute("username", username); 
        int rs2 = st.executeUpdate("INSERT INTO items (article, size, brand)" + "VALUES(?, ?, ?)");
        out.println("<h3> Item Submitted Successfully");
		out.println("<form action='loginPage.jsp'><input type='submit' value='Login'/></form>");
   
%>
</body>
</html>