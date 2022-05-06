<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%
    String question = request.getParameter("question");  
	String username = (String)session.getAttribute("user");
    Class.forName("com.mysql.jdbc.Driver");
    ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();
    Statement st = con.createStatement();
    
    st.executeUpdate("insert into question (question, username) values('" + question+ "', '" + username +  "')");
        		
        		
        		out.println("<h3>Thank you for contacting us. We'll get back to you as soon as possible."); 
        				out.println("");
       		out.println("<form action='userPage.jsp'><input type='submit' value='Go back'/></form>"); 
         		

    
%>