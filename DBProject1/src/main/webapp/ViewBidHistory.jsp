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
	Class.forName("com.mysql.jdbc.Driver");
	ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();
	Statement st = con.createStatement();
	
	int auction_id = Integer.parseInt(request.getParameter("auction_id"));
	
	ResultSet result = st.executeQuery("SELECT * FROM bid WHERE auction_id = " + auction_id);
%>
	<table>
	<tr>
		<td>Bidders</td>
		<td>Bid Amount Placed</td>
	</tr>


<%  while (result.next()) { %>
	<tr>
		<td><%= result.getString("user")%></td>
		<td><%= result.getString("bid_amount")%></td>
	</tr>

<%  }

	db.closeConnection(con);
%>
	</table>
	
	

</body>
</html>
