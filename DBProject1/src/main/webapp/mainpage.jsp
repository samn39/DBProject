<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>
	<h1>Welcome to the .... store</h1>
	<h2>Choose the type of account to log in...</h2>
	
	<form action="logInType.jsp" method="POST">
 
       <input type="submit" value="Log In"/>
    </form>
    <p> Don't have an account? </p>
    <form action="loginCheck.jsp" method="POST">
    
       <input type="submit" value="Create Account"/>
    </form>
    
 <!--    <form action="loginCheck.jsp" method="POST">
     
       <input type="submit" value="Customer Representative"/>
    </form>
    
    <form action="loginCheck.jsp" method="POST">
    
       <input type="submit" value="Admin"/>
    </form> -->
    
    
   
	
	
	
	
	
	
	
	
</body>
</html>