<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%
    String userid = request.getParameter("username");   
    String pwd = request.getParameter("password");
    String loginType = request.getParameter("userType");
    Class.forName("com.mysql.jdbc.Driver");
    ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from account where username='" + userid + "' and password='" + pwd + "'and userType='" + loginType + "'");
    if (rs.next()) {
        session.setAttribute("user", userid); // the username will be stored in the session
       /*  out.println("welcome " + userid);
        out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp"); */
        if(loginType.equals("User")){
    		response.sendRedirect("userPage.jsp");
    	}
    	if(loginType.equals("Rep")){
    		response.sendRedirect("repPage.jsp");
    	}
    	if(loginType.equals("Admin")){
    		response.sendRedirect("adminPage.jsp");
    	}
    } else {
        out.println("Invalid password <a href='loginPage.jsp'>try again</a>");
    }
%>