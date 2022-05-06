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
	rs = st.executeQuery("select * from items");			

 %>
        
<title>Insert title here</title>
</head>
<body>
<p> view items table: include option to create an auction and "alert me" for every item row </p>

<p> each item row should have pid, type, size, brand </p>



        <TABLE BORDER="1">
            <TR>
                <TH>product_id</TH>
                <TH>clothing type</TH>
                <TH>brand</TH>
                <TH>seller</TH>
            </TR>
            <% while(rs.next()){ %>
            <TR>
                <TD> <%= rs.getString("product_id") %></td>
                <TD> <%= rs.getString("clothing_type") %></TD>
                <TD> <%= rs.getString("brand") %></TD>
                <TD> <%= rs.getString("seller") %></TD>
            </TR>
            <% } %>
        </TABLE>


<h2>Start an auction</h2>
		<div class="content">
		<form action="checkStartAuction.jsp" method="POST">	
		<table>
			 <tr> 
				<td>
				<input type="hidden" name="product_id" value = <%=request.getParameter("product_id")%>>
				</td>
			</tr> 
			<tr>    
				<td>Closing Date: </td>
				<td><input type="text" name="closing_date" placeholder="YYYY-MM-DD" required></td>
			</tr> 
			<tr>    
				<td>Closing Time: </td>
				<td><input type="text" name="closing_time" placeholder="HH:MM:SS" required></td>
			</tr> 
			<tr>    
				<td>Initial Starting Price: </td>
				<td><input type="number" name="starting_price" placeholder="0" required></td>
			</tr>		
			<tr>    
				<td>Bid Increment:  </td>
				<td><input type="number" name="bid_increment" placeholder="0" required></td>
			</tr>	
			<tr>    
				<td>Secret Minimum Price: </td>
				<td><input type="number" name="min_price" placeholder="0" required></td>
			</tr>
		</table>
		<p><input type="submit" value="Submit my item for Auction!"> </p>
		 </form>

</body>
</html>