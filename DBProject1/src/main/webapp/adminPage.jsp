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
<form action="manageAccount.jsp" method="POST">
       <input type="submit" value="Manage account"/>
 </form>
 <form action="logout.jsp" method="POST">
       <input type="submit" value="Log out"/>
 </form>
</body>
</html>