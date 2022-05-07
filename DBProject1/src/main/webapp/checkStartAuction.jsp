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
	String closing_date = request.getParameter("closing_date");   
	String closing_time = request.getParameter("closing_time");   
	String starting_price = request.getParameter("starting_price");   
	String bid_increment = request.getParameter("bid_increment");   
	String min_price = request.getParameter("min_price");   

	String seller = (String)session.getAttribute("user");
	 
    Class.forName("com.mysql.jdbc.Driver");
    ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();
    Statement st = con.createStatement();
    ResultSet rs;
    
    //session.setAttribute("user", username); 
    st.executeUpdate("insert into auctions values('" + seller + "', '" + starting_price + "', '" + closing_date + "', '"
        		+ closing_time + "', '" + min_price + "', '" +bid_increment + "')");
       
        		
    out.println("<h3> Auction Created Successfully");
    out.println("<form action='ViewAuctions.jsp'><input type='submit' value='Go Back to Auctions List.'/></form>");
	
	//need to remove item from items table

%>
</body>
</head>
</html>