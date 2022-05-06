<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p> view items table: include option to create an auction and "alert me" for every item row </p>

<p> each item row should have pid, type, size, brand </p>

<h2>Start an auction</h2>
		<div class="content">
		<form action="checkStartAuction.jsp" method="POST">	
		<table>
			 <tr> 
				<td>
				<input type="hidden" name="product_id" value = <%=request.getParameter("product_id")%>>
				</td>
			</tr> 
			<tr>    
				<td>Closing Date: </td>
				<td><input type="text" name="closing_date" placeholder="YYYY-MM-DD" required></td>
			</tr> 
			<tr>    
				<td>Closing Time: </td>
				<td><input type="text" name="closing_time" placeholder="HH:MM:SS" required></td>
			</tr> 
			<tr>    
				<td>Initial Starting Price: </td>
				<td><input type="number" name="starting_price" placeholder="0" required></td>
			</tr>		
			<tr>    
				<td>Bid Increment:  </td>
				<td><input type="number" name="bid_increment" placeholder="0" required></td>
			</tr>	
			<tr>    
				<td>Secret Minimum Price: </td>
				<td><input type="number" name="min_price" placeholder="0" required></td>
			</tr>
		</table>
		<p><input type="submit" value="Submit my item for Auction!"> </p>
		 </form>

</body>
</html>