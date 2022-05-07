<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    
<title>View enduser account</title>
</head>
<body>
 <% 
 	Class.forName("com.mysql.jdbc.Driver");
 	ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();
 	Statement st = con.createStatement();
 	ResultSet rs;
	rs = st.executeQuery("select * from account where userType = '" + "User" + "'");			

 %>
  <form action='repPage.jsp'><input type='submit' value='Back to main page'/></form>
<h3> All End-user Accounts </h3>
        <TABLE BORDER="1">
            <TR>
                <TH>First Name</TH>
                <TH>Last Name</TH>
                <TH>Username</TH>
                <TH>Password</TH>
                <TH>Edit</TH>
                <TH>Delete</TH>
            </TR>
            <% while(rs.next()){ %>
            <TR>
            	
                <TD> <%= rs.getString("firstname") %></td>
                <TD> <%= rs.getString("lastname") %></TD>
                <TD> <%= rs.getString("username") %></TD>
                <TD> <%= rs.getString("password") %></TD>
                
             <form action="answerQuestion.jsp?questionID=<%=rs.getString("username")%>" method="POST">
                <TD>
                <input type="submit" value="Edit account">
                </TD>
                </form>
                    
             <form action="repDeleteUser.jsp?username=<%=rs.getString("username")%>" method="POST">
                <TD>
                <input type="submit" value="Delete account">
                </TD>
               </form>
                
            </TR>
            <% } %>
        </TABLE>
</body>