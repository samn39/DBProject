<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Choose your service</h1>
	<h2>Start an auction</h2>
	<h2>Start an auction</h2>
	<h2>Start an auction</h2>
	<h2>Start an auction</h2>
	<table>
		 <tr> 
			<td>
			<input type="hidden" name="product_id" value = <%=request.getParameter("product_id")%>>
			</td>
		</tr> 
		<tr>    
			<td>End Date: <br><p>Enter the end date of the auction in the specified format (yyyy-MM-dd hh:mm:ss)</p> </td>
			<td><input type="text" name="end_datetime" id="end_datetime" placeholder="yyyy-MM-dd hh:mm:ss" required></td>
		</tr> 
		<tr>    
			<td>Secret Minimum Price: <br><p>Enter the minimum price that you want to sell this item for</p><br> <p>Minimum Price has to be greater than 0 </p> </td>
			<td><input type="number" name="min_price" placeholder="0" required></td>
		</tr>	
		<tr>    
			<td>Initial Starting Price: <br><p>Enter the starting price of this auction</p><br> 
			<p> Note: Starting Price has to be less than the minimum price </p> </td>
			<td><input type="number" name="starting_price" placeholder="0" required></td>
		</tr>	
		<tr>    
			<td>New Bid Increment: <br><p>Enter the Bid Increment for the next valid bid</p> </td>
			<td><input type="number" name="new_bid_increment" placeholder="0" required></td>
		</tr>	
	</table>
	
	

</body>
</html>