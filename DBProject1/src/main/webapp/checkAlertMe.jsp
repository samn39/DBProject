<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String clothing_type = request.getParameter("clothing_type");   
	String size = request.getParameter("size");   
	String brand = request.getParameter("brand");
	String seller = (String)session.getAttribute("user");
	
	Class.forName("com.mysql.jdbc.Driver");
    ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();
    Statement st = con.createStatement();
    
    st.executeUpdate("INSERT INTO alerts (clothing_type, size, brand, seller) VALUES ('" + clothing_type + "', '" + size + "', '" + brand + "', '" + seller + "')");
    out.println("<h3> Alert Set Successfully");
	out.println("<form action='ViewItems.jsp'><input type='submit' value='Go back to Items Page.'/></form>");
    
    
%>
</body>
</html>