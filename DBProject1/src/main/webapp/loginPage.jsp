<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log In Type</title>
</head>
<body>

<h1>Account Login</h1>

 <form action="loginCheck.jsp" method="POST">
 	Account Type:
			<select name="userType" required>
				<option value="" disabled selected hidden="true">Select Account Type</option>
				<option value="User">User</option>
				<option value="Rep">Customer Representation</option>
				<option value="Admin">Admin</option>
			</select> 
	<br/>
       Username: <input type="text" name="username" required/> <br/>
       Password:<input type="password" name="password" required/> <br/>
   
       <input type="submit" value="Submit"/>
     </form>
     
     <br/>
     
     Don't have an account?
    <form action="signupPage.jsp" method="POST">
       <input type="submit" value="Create Account"/>
    </form>
     
     
     
  
    

</body>
 
</html>


  