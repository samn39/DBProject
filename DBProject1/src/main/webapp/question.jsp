<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="userPage.jsp" method="POST">

       <input type="submit" value="Go back"/>
    </form>
<h2> Ask your question here</h2>

<form action="sendQuestion.jsp" method="POST">
<input type="text" name="question" required/> <br/>
       <input type="submit" value="Submit question"/>
    </form>
<h2> Search your question here</h2>

<form action="searchQuestion.jsp" method="POST">
<input type="text" name="search" required/> <br/>
       <input type="submit" value="Search question"/>
    </form>

</body>
<%
Class.forName("com.mysql.jdbc.Driver");
 	ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();
 	Statement st = con.createStatement();
 	ResultSet rs = st.executeQuery("select * from question");
	 %>
<h2>Browse asked questions here</h2>

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
		                <TD> <%= rs.getString("customerRep_username") %>
		                </TD>
            <% } %>
        </TABLE>
</html>