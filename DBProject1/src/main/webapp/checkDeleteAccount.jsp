<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<%
	
		ApplicationDB db = new ApplicationDB();
		Connection con = db.getConnection();
		Statement stmt = con.createStatement();
		String username = (String)session.getAttribute("user");
		String password = request.getParameter("passwordConfirm");
		
		

		
		 String str = "SELECT * FROM account WHERE username LIKE'" + username + "'";
		ResultSet rs = stmt.executeQuery(str);
		rs.next();
		String passwordCheck = rs.getString("password"); 
		if(password.equals(passwordCheck)){
			stmt.executeUpdate("DELETE FROM account WHERE username LIKE'" + username + "'");
			session.invalidate();
			out.println("<h3>Thank you for visiting our shop. We hope to see you again soon!"); 	
			out.println("<form action='mainpage.jsp'><input type='submit' value='Back to mainpage'/></form>"); 
		} else {
			out.println("<h3>Wrong password. Please try again"); 
			out.println("<form action='deleteAccount.jsp'><input type='submit' value='Confirm Password'/></form>"); 
		
		} 
		%>