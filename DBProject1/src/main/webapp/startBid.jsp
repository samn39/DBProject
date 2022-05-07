<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<form action="checkStartBid.jsp" method="POST">	
		<table>
			<tr>    
				<td>Bid Amount:  </td>
				<td><input type="number" name="bid_amount" placeholder="0" required></td>
			</tr>
			
		</table>
		<p><input type="submit" value="Submit my bid for this item!"> </p>
		 </form>


</body>
</html>