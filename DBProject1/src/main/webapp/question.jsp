<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2> Ask your question here</h2>

<form action="sendQuestion.jsp" method="POST">
<input type="text" name="question" required/> <br/>
       <input type="submit" value="Submit question"/>
    </form>
<h2> Search your question here</h2>

<form action="signupPage.jsp" method="POST">
<input type="text" name="search" required/> <br/>
       <input type="submit" value="Search question"/>
    </form>

</body>
<h2>Browse asked questions here</h2>
<form action="logout.jsp" method="POST">
       <input type="submit" value="Browse"/>
 </form>
</html>