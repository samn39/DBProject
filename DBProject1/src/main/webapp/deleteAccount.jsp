<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Account</title>
</head>
<body>
<form action="checkDeleteAccount.jsp" method="POST">
		<h3>Please confirm your password.</h3>
		<input type="text" name="passwordConfirm" placeholder="Confirm password"> <br/>
		<button type="submit">Delete Account</button>
	</form>
</body>
</html>