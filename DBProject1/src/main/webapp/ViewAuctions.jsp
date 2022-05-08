<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

 <% 
 	Class.forName("com.mysql.jdbc.Driver");
 	ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();
 	Statement st = con.createStatement();
 	ResultSet rs;
	rs = st.executeQuery("select * from auctions");			

 %>
        
<title>Items for Auction</title>
</head>
<body>
<h1>Items for Auction</h1>
	<form action="ViewAuctionsByPrice.jsp" method="POST">
    <TD><p><input type="submit" value="Sort Items by Price"> </p></TD></form>
    <form action="ViewAuctionsBySeller.jsp" method="POST">
    <TD><p><input type="submit" value="Sort Items by Seller"> </p></TD></form>
               
            
        <TABLE BORDER="1">
            <TR>
                <TH>product_id</TH>
                <TH>seller</TH>
                <TH>closing date</TH>
                <TH>closing time</TH>
                <TH>bid increment</TH>
                <TH>current bid</TH>
                <TH>highest bidder</TH>             
            </TR>
            <% while(rs.next()){ %>
            <TR>
                <TD> <%= rs.getString("product_id") %></td>
                <TD> <%= rs.getString("seller") %></TD>
                <TD> <%= rs.getString("closing_date") %></TD>
                <TD> <%= rs.getString("closing_time") %></TD>
                <TD> <%= rs.getString("bid_increment") %></TD>
                <TD> <%= rs.getString("curr_bid") %></TD>
                <TD> <%= rs.getString("highest_bidder") %></TD>
                <form action="startBid.jsp" method="POST">
                <TD><p><input type="submit" value="Bid on me"> </p></TD> </form>
                <form action="ViewBidHistory.jsp" method="POST">
                <TD><p><input type="submit" value="View Bid History"> </p></TD> </form>
                <form action="ViewSimilarItems.jsp" method="POST">
                <TD><p><input type="submit" value="View Similar Items"> </p></TD> </form>
                
            </TR>
            <% } %>
        </TABLE>
	<form action='userPage.jsp'><input type='submit' value='Go Back to User Page.'/></form>
</body>
</html>