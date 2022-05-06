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
                <TD><p><input type="submit" value="Alert Me"> </p></TD>
                <form action="startAuction.jsp" method="POST">
                <TD><p><input type="submit" value="Start an auction"> </p></TD>
                
            </TR>
            <% } %>
        </TABLE>




</body>
</html>