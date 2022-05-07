<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Welcome <%=session.getAttribute("user")%><h2/>
 <form action="logout.jsp" method="POST">
       <input type="submit" value="Log out"/>
 </form>

<h3>Create Account for Customer Representative</h3>
<form action="createRepAccount.jsp" method="POST">
       <input type="submit" value="Create account"/>
 </form>

 <h3>Generate Sale Report</h3>
 <form action="editAccount.jsp" method="POST">
       <input type="submit" value="Type of sale report"/>
 </form>
</body>
</html>