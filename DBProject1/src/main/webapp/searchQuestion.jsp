<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<form action="question.jsp" method="POST">
       <input type="submit" value="Go back to question"/>
    </form>
	<h3>Search Questions based on Keywords</h3>
	<form>
		<input type="text" name="search" placeholder="question">
		<button type="submit">Search</button>
	</form>

	<%
	
		ApplicationDB db = new ApplicationDB();
		Connection con = db.getConnection();
		Statement stmt = con.createStatement();
		String entity = request.getParameter("search");
		String str = "SELECT * FROM question WHERE question LIKE'%" + entity + "%' or answer like '%" + entity + "%'";
		ResultSet rs = stmt.executeQuery(str);
		
		%>
		  <TABLE BORDER="1">
		            <TR>
		                <TH>Question</TH>
		                <TH>Answer</TH>
		                <TH>Asked by</TH>
		                <TH>Answered by</TH>
		          
		            </TR>
		            <% while(rs.next()){ %>
		            <TR>
		                <TD> <%= rs.getString("question") %></td>
		                <TD> <%= rs.getString("answer") %></TD>
		                <TD> <%= rs.getString("username") %></TD>
		                <TD> <%= rs.getString("customerRep_username") %></TD>
		                
		                          
		            </TR>
		            <% } %>
		        </TABLE>
		        
