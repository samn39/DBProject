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
	String username = (String)session.getAttribute("user");
	String answer = request.getParameter("answer");
	int questionID = Integer.parseInt(request.getParameter("questionID"));

	
	PreparedStatement ps =null;
	String sql="Update question set answer=?,customerRep_username=? where questionID="+questionID;
	ps = con.prepareStatement(sql);
	ps.setString(1, answer);
	ps.setString(2, username);
	int i = ps.executeUpdate();
	if(i<1){
		out.println("Failed to answer the question.");
	} else {
	
 
 out.println("<h3> Question anwsered successfully");
		out.println("<form action='repQuestion.jsp'><input type='submit' value='View more questions'/></form>");
		out.println("<form action='repPage.jsp'><input type='submit' value='Back to main page'/></form>");
	}
 %>

        
             
               
              
                
                
        
</body>
</html>