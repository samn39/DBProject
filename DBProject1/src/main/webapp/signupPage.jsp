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

 <form action="loginCheck.jsp" method="POST">
 	Account Type:
			<select name="userType" required>
				<option value="" disabled selected hidden="true">Select Account Type</option>
				<option value="User">User</option>
				<option value="Rep">Customer Representation</option>
				<option value="Admin">Admin</option>
			</select> 
	<br/>
       First Name: <input type="text" name="username" required/> <br/>
       Last Name:<input type="password" name="password" required/> <br/>
       Username: <input type="text" name="username" required/> <br/>
       Password:<input type="password" name="password" required/> <br/>
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