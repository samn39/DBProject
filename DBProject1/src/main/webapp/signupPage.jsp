<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Account Sign Up</h1>

 <form action="signupCheck.jsp" method="POST">
 	
	
       First Name: <input type="text" name="firstName" required/> <br/>
       Last Name:<input type="text" name="lastName" required/> <br/>
       Username: <input type="text" name="username" required/> <br/>
       Password:<input type="password" name="password" required/> <br/>
			
       <input type="submit" value="Submit"/>
     </form>
     
     <br/>
     
     Already have an account? Log in here.
    <form action="loginPage.jsp" method="POST">
       <input type="submit" value="Log in"/>
    </form>
     
</body>
</html>