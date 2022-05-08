<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    
<title>Edit User Account</title>
</head>
<body>
 <% 
 	Class.forName("com.mysql.jdbc.Driver");
 	ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();
 	Statement st = con.createStatement();
 	String username2= request.getParameter("username");
	ResultSet rs;
	rs = st.executeQuery("select * from account where username = '" + username2 + "'");
	rs.next();
	
 
 
 %>
  <form action='editAccount.jsp'><input type='submit' value='Back'/></form>
<h3>Edit User Account</h3>

	<form action="editUserHandler.jsp?username=<%=rs.getString("username")%>"  method="POST">
		
		Enter New Firstname: <input type="text" name="newFirstname"><br>
		Enter New Lastname: <input type="text" name="newLastname">  <br> 
		Enter New Username: <input type="text" name="newUsername"><br>
		Enter New Password: <input type="text" name="newPassword"><br>
		<input type="submit" value="Save Changes">
	</form>
</body>