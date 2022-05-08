<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    
<title>Insert title here</title>
</head>
<body>
 <% 
 	Class.forName("com.mysql.jdbc.Driver");
 	ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();
 	Statement st = con.createStatement();
	ResultSet rs;
	rs = st.executeQuery("select * from account"); 	 	
	String username2 = request.getParameter("username");
	String newFirstname = request.getParameter("newFirstname");
	String newLastname = request.getParameter("newLastname");
	String newUsername= request.getParameter("newUsername");
	String newPassword = request.getParameter("newPassword");

	 
	PreparedStatement ps =null;
	st.executeUpdate("SET FOREIGN_KEY_CHECKS=0");
	String sql="Update account set username=?,password=?, firstname=?, lastname=? where username=?";
	ps = con.prepareStatement(sql);
	ps.setString(3, newFirstname);
	ps.setString(4, newLastname);
	ps.setString(1, newUsername);
	ps.setString(2, newPassword);
	ps.setString(5, username2);
	int i = ps.executeUpdate();
	
	st.executeUpdate("SET FOREIGN_KEY_CHECKS=1");
	if(i<1){
		out.println("Failed to update account");
	} else {
 out.println("<h3> Account updated successfully");
		out.println("<form action='editAccount.jsp'><input type='submit' value='Back to vew account'/></form>");
		out.println("<form action='repPage.jsp'><input type='submit' value='Back to main page'/></form>");
	}   
	
%>
 
