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
	rs = st.executeQuery("select * from question");			

 %>
 <form action='repPage.jsp'><input type='submit' value='Back to main page'/></form>
<h3> Asked Questions </h3>
        <TABLE BORDER="1">
            <TR>
                <TH>Question</TH>
                <TH>Answer</TH>
                <TH>Asked By</TH>
                <TH>Answered By</TH>
                 <TH>Add Answer</TH>
            </TR>
            <% while(rs.next()){ %>
            <TR>
            	
                <TD> <%= rs.getString("question") %></td>
                <TD> <%= rs.getString("answer") %></TD>
                <TD> <%= rs.getString("username") %></TD>
                <TD> <%= rs.getString("customerRep_username") %></TD>
                
                <form action="answerQuestion.jsp?questionID=<%=rs.getInt("questionID")%>" method="POST">
                <TD>
                <textarea type="textarea" name="answer"></textarea>
                <input type="submit" value="Answer">
                </TD>
                </form>
                
            </TR>
            <% } %>
        </TABLE>
</body>
</html>