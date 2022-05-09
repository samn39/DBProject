<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
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
	ApplicationDB db = new ApplicationDB();
	Connection conn = db.getConnection();
	PreparedStatement ps = null;
	ResultSet result = null;
	Statement stmt = conn.createStatement();

	String user = (String)session.getAttribute("user");
	int auction_id = Integer.parseInt(request.getParameter("auction_id"));
	result = stmt.executeQuery("SELECT * FROM auction a, product p WHERE a.product_id=p.product_id");
	result.next();
	
	
%>
<form action='ViewAuctions.jsp'><input type='submit' value='Go Back to Auctions Page.'/></form>

</body>
</html>