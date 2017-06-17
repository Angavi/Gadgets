<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Description Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<%@include file="header.jsp"%>
	<div class="container">

		<table width="80%" align="center" border="1">
			<tr bgcolor="pink">
				<td colspan="3"><center>Product Description</center></td>
			</tr>
			<tr>
				<td rowspan="6"><img
					src="<c:url value="/resources/img/${Product.pId}.jpg" />" /></td>
			</tr>
			<tr>
				<td>Product ID</td>
				<td>${Product.pId}</td>
			</tr>
			
			<td> Quantity</td>
				<td>${Product.quantity}</td>
			</tr>
			
			<tr>
				<td>Product Name</td>
				<td>${Product.pName}</td>
			</tr>
			<tr>
				<td>Supplier</td>
				<td>${Product.sname}</td>
			</tr>
			<tr>
				<td>Product Description</td>
				<td>${Product.pDescription}</td>
			</tr>
			<tr>
				<td>Price</td>
				<td>${Product.pPrice}</td>
			</tr>

			<tr>
				<td></td>
				<td colspan="2">
					<form action="<c:url value="${cr}/addToCart/${Product.pId}"/>"
						method="get">
						Quantity <input type="text" name="quantity"
							class="form-control  btn-block  " /> <input type="submit"
							value="AddToCart" class="btn btn-xs btn-success btn-block" />
					</form>
				</td>
			</tr>

		</table>
	</div>

</body>
</html>