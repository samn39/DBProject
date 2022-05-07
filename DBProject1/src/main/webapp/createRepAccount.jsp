<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Rep Sign up</title>
</head>
<body>
<h1>Account Sign Up for Customer Representative</h1>

 <form action="signupCheck.jsp" method="POST">
 	
	
       First Name: <input type="text" name="firstName" required/> <br/>
       Last Name:<input type="text" name="lastName" required/> <br/>
       Username: <input type="text" name="username" required/> <br/>
       Password:<input type="password" name="password" required/> <br/>
       <value: "Rep" name= "userType"/>
      
			
			 <br/>
       <input type="submit" value="Submit"/>
     </form>
     
     <br/>
     
     Already have an account? Log in here.
    <form action="loginPage.jsp" method="POST">
       <input type="submit" value="Log in"/>
    </form>
     
</body>
</html>