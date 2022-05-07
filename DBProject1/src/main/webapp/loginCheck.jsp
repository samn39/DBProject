<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%
	String loginType = request.getParameter("userType");
	String userid = request.getParameter("username");   
    String pwd = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();
    Statement st = con.createStatement();
    ResultSet rs = null;
    if(loginType.equals("User")){
    	rs = st.executeQuery("select * from account where username='" + userid + "' and password='" + pwd + "'and userType='" + loginType + "'");
	}
    if(loginType.equals("Rep")){
    	rs = st.executeQuery("select * from customerRep where username='" + userid + "' and password='" + pwd + "'");
	}
    if(loginType.equals("Admin")){
    	rs = st.executeQuery("select * from Admin where username='" + userid + "' and password='" + pwd + "'");
	}
    
    if (rs.next()) {
        session.setAttribute("user", userid); // the username will be stored in the session
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
        out.println("<h3>Invalid password ");
        out.println("<form action='loginPage.jsp'><input type='submit' value='Try Again'/></form>");
    }
%>