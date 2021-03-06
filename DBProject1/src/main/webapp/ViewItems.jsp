<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


	<h3>Search Items for Auction based on Keywords</h3>
	<form action="searchItems.jsp" method="POST">
		<input type="text" name="search" placeholder="brand, article, or seller">
		<button type="submit">Search</button>
	</form>
	<br>
 <% 
 	Class.forName("com.mysql.jdbc.Driver");
 	ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();
 	Statement st = con.createStatement();
 	ResultSet rs;
	rs = st.executeQuery("select * from items join auctions on items.product_id = auctions.product_id;");			

 %>
        
<title>All Items</title>
</head>
<body>

        <TABLE BORDER="1">
            <TR>
                <TH>product_id</TH>
                <TH>clothing type</TH>
                <TH>size</TH>
                <TH>brand</TH>
                <TH>seller</TH>
                
            </TR>
            <% while(rs.next()){ %>
            <TR>
                <TD> <%= rs.getString("product_id") %></td>
                <TD> <%= rs.getString("clothing_type") %></TD>
                <TD> <%= rs.getString("size") %></TD>               
                <TD> <%= rs.getString("brand") %></TD>
                <TD> <%= rs.getString("seller") %></TD>
                <form action="checkAlertMe.jsp" method="POST">
                <TD><p><input type="submit" value="Alert Me"> </p></TD></form>
                <form action="startAuction.jsp" method="POST">
                <TD><p><input type="submit" value="Start an auction"> </p></TD></form>
                
            </TR>
            <% } %>
        </TABLE>
</body>
</html>