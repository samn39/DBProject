<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Page</title>
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

	<h2>Browsing Options</h2>

	<a href="ViewItems.jsp">View All Items</a>
	<br>
	<a href="ViewAuctions.jsp">View Items for Auction</a>
	<br>
	<a href="MyAlerts.jsp">View My Alerts</a>
	<br>
	
		
	<h2>Add an Item</h2>
		<div class="content">
		<form action="checkAddItem.jsp" method="POST">
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
				<td><input type="text" name="brand" placeholder="" required></td>
			</tr> 
		</table>
		<p><input type="submit" value="Submit my item to the Potential Market!"> </p>
		 </form>
		 
	<h2>Have any questions? Ask here.</h2>
<form action="question.jsp" method="POST">
       <input type="submit" value="Ask a question"/>
 </form>

	
	

</body>
</html>