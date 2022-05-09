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
 	ResultSet rs;
 	PreparedStatement ps = null;
 	
 	int auction_id = Integer.parseInt((String)session.getAttribute("auction_id"));
 	ps = con.prepareStatement("SELECT max(x.amount) FROM auction a, bid x WHERE  x.auction_id=a.auction_id AND x.auction_id=?");
 	
 	//ps.setFloat(1, curr_bid);
	//ps.setString(2, user);
	ps.setInt(3, auction_id);
	ps.executeUpdate();
	
	ps = con.prepareStatement("INSERT INTO bid(auction_id, user, curr_bid)" + " VALUE(?,?,?)");
		

 %>
        
</body>
</html>