<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log in with type of account</title>
</head>
<body>
	<%String loginType = request.getParameter("userType");
	if(loginType.equals("User")){
		response.sendRedirect("loginCheck.jsp");
	}
	if(loginType.equals("Rep")){
		response.sendRedirect("loginCheck.jsp");
	}
	if(loginType.equals("Admin")){
		response.sendRedirect("loginCheck.jsp");
	}
    %>
     
</body>
</html>