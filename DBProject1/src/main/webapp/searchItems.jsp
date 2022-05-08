<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<form action="ViewItems.jsp" method="POST">
 <input type="submit" value="Go back to all items"/>
    </form>
	<h3>Search Items for Auction based on Keywords</h3>
	<form>
		<input type="text" name="search" placeholder="question">
		<button type="submit">Search</button>
	</form>

	<%
	
		ApplicationDB db = new ApplicationDB();
		Connection con = db.getConnection();
		Statement stmt = con.createStatement();
		String entity = request.getParameter("search");
		String str = "select * from items join auctions on items.product_id = auctions.product_id WHERE items.brand LIKE'%" + entity + "%' or items.clothing_type like '%" + entity + "%' or items.seller like '%" + entity + "%'";
		ResultSet rs = stmt.executeQuery(str);
		
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
                <TD><p><input type="submit" value="Alert Me"> </p></TD> </form>
                <form action="startAuction.jsp" method="POST">
                <TD><p><input type="submit" value="Start an auction"> </p></TD> </form>
                
            </TR>
            <% } %>
        </TABLE>
