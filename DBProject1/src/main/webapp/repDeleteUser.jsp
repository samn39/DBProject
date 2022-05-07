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
		String username = request.getParameter("username");

		
		
		stmt.executeUpdate("SET FOREIGN_KEY_CHECKS=0");
		int a = stmt.executeUpdate("DELETE FROM account WHERE username LIKE'" + username + "'");
		stmt.executeUpdate("SET FOREIGN_KEY_CHECKS=1");
		out.println("<h3> Account deleted sucessfully");
			out.println("<form action='editAccount.jsp'><input type='submit' value='Back to View user'/></form>"); 
			out.println("<form action='repPage.jsp'><input type='submit' value='Back to main page'/></form>");  
	
		
		
		%>