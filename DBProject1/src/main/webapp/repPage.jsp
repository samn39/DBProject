<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Replying Questions</title>
</head>
<body>
<h1>Welcome <%=session.getAttribute("user")%><h1/>
 <form action="logout.jsp" method="POST">
       <input type="submit" value="Log out"/>
 </form>
 <h3>Anwser End-user Questions</h3>
<form action="repQuestion.jsp" method="POST">
       <input type="submit" value="View asked questions to answer"/>
 </form>
 <h3>Edit End-user Account</h3>
 <form action="editAccount.jsp" method="POST">
       <input type="submit" value="View end-user accounts"/>
 </form>

 <h3>Generate Sale Report</h3>
 <form action="editAccount.jsp" method="POST">
       <input type="submit" value="Type of sale report"/>
 </form>
</body>
</html>