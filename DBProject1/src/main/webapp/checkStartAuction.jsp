<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	String closing_date = request.getParameter("closing_date");   
	String closing_time = request.getParameter("closing_time");   
	String starting_price = request.getParameter("starting_price");   
	String bid_increment = request.getParameter("bid_increment");   
	String min_price = request.getParameter("min_price");   

	String username = session.getAttribute("username").toString();
	 
    Class.forName("com.mysql.jdbc.Driver");
    ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();
    Statement st = con.createStatement();
    ResultSet rs;
    
    session.setAttribute("user", username); 
    st.executeUpdate("insert into auctions values('" + username + "', '" + password + "', '" + firstName + "', '"
        		+ lastName + "', '" + userType + "')");
        		session.setAttribute("user", username);
        		
    out.println("<h3> Auction Created Successfully");
    out.println("<form action='loginPage.jsp'><input type='submit' value='Login'/></form>");
	
	//need to remove item from items table


</body>
</head>
</html>