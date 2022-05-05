<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%
    String firstName = request.getParameter("firstName");   
	String lastName = request.getParameter("lastName");   
	String username = request.getParameter("username");   
	String password = request.getParameter("password");   
    Class.forName("com.mysql.jdbc.Driver");
    ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from account where username='" + username + "' and password='" + password + "'");
    if (rs.next()) {
        out.println("Account already exists <a href='loginPage.jsp'></a>");
        /*  out.println("welcome " + userid);
        out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp"); */
        // account already in database
    } else {
        session.setAttribute("user", username); // the username will be stored in the session

    }
%>