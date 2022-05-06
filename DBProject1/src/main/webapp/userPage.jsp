<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Welcome <%=session.getAttribute("user")%><h2/>
<form action="deleteAccount.jsp" method="POST">
       <input type="submit" value="Delete account"/>
</form>
 <form action="logout.jsp" method="POST">
       <input type="submit" value="Log out"/>
 </form>

<h1>Auctions</h1>
	<h2>View Items</h2>
	
	<h2>View Items Available on Auction Market</h2>
	
	<h2>Push your item to potential market</h2>
		<div class="content">
		<form action="checkCreateItemn.jsp" method="POST">
		<label for="article">Article: </label> <select name="article"
				id="category" required>
				<option value="" disabled selected hidden="true">Select</option>
				<option value="Shirt">Shirt</option>
				<option value="Pants">Pants</option>
				<option value="Jacket">Jacket</option>
			</select> <br>	
		
		<label for="size">Size: </label> <select name="size"
				id="category" required>
				<option value="" disabled selected hidden="true">Select</option>
				<option value="S">Small</option>
				<option value="M">Medium</option>
				<option value="L">Large</option>
			</select> <br>	
			
		<table>
			 <tr> 
				<td>
				<input type="hidden" name="product_id" value = <%=request.getParameter("product_id")%>>
				</td>
			</tr> 

			<tr>    
				<td>Brand: </td>
				<td><input type="text" name="closing_date" placeholder="" required></td>
			</tr> 
		</table>
		<p><input type="submit" value="Submit my item to the Potential Market!"> </p>
		 </form>
	
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
		 
	<h2>Have any questions? Ask here.</h2>
<form action="question.jsp" method="POST">
       <input type="submit" value="Ask a question"/>
 </form>

	
	

</body>
</html>