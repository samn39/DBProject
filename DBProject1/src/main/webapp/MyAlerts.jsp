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
	ApplicationDB db = new ApplicationDB();
	Connection conn = db.getConnection();
	String user = (String)session.getAttribute("user");
	ResultSet result = null;
	PreparedStatement ps2 = conn.prepareStatement("select * from alerts aler where aler.username=?");
	ps2.setString(1, "select * from alerts aler where aler.username=?");
	result = ps2.executeQuery();
	
	
	%>
</body>
</html>