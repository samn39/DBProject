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
	Class.forName("com.mysql.jdbc.Driver");
    ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();
    Statement st = con.createStatement();
    
    int auction_id = Integer.parseInt(session.getAttribute("auction_id").toString());
    
    
    //you can del this
    String str = "SELECT max(b.amount) FROM auction a, bid b WHERE b.auction_id=? AND b.auction_id=a.auction_id";
%>
</body>
</html>