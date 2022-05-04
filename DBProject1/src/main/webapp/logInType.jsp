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

<div class="User Type">
  <label for="userType">Account Type</label> <select name="userType"
				id="userType" required>
				<option value="" disabled selected hidden="true">Select
					category</option>
				<option value="User">User</option>
				<option value="Rep">Customer Representation</option>
				<option value="Admin">Admin</option>
			</select> 
  </div>
</div>

 <form action="loginCheck.jsp" method="POST">
       Username: <input type="text" name="username"/> <br/>
       Password:<input type="password" name="password"/> <br/>
      <!--  AccountType: --> 
       <input type="submit" value="Submit"/>
     </form>

</body>
</html>