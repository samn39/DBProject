<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Push your item to potential market</h2>
		<div class="content">
		<form action="checkAddItem.jsp" method="POST">
		<label for="article">Article: </label> <select name="article"
				id="category" required>
				<option value="" disabled selected hidden="true">Select</option>
				<option value="Shirt">Shirt</option>
				<option value="Pants">Pants</option>
				<option value="Jacket">Jacket</option>
			</select> <br>	
		
		<p><label for="size">Size: </label> <select name="size"
				id="category" required>
				<option value="" disabled selected hidden="true">Select</option>
				<option value="S">Small</option>
				<option value="M">Medium</option>
				<option value="L">Large</option>
			</select> <br>	</p>
			
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
</body>
</html>