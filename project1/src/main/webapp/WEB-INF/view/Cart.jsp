<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>





<html>
<head>
<c:set var="cr" value="${pageContext.request.contextPath}" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
.button3 {
	background-color: white;
	color: black;
	border: 2px solid #f44336;
}
</style>
</head>
<body>

<%@ include file="header.jsp"%>
	<div class="container">

<br>
<br>
<br>
<br>
		<table cellspacing="5" width="80%" align="center">
			<tr>
				<td colspan="3"><h3>
						<b><center>SHOPPING CART</center></b>
					</h3></td>
			</tr>
			<tr bgcolor="#D3D3D3">
				<td><b>Product ID</b></td>
				<td><b>Quantity</b></td>
				<td><b>SubTotal</b></td>
				<td><b>Image</b></td>
				<td><b>Operation</b></td>
			</tr>
			<c:forEach items="${cartitems}" var="cart">
				<form
					action="<c:url value="${cr}/updateCartItem/${cartitems.cid}"/>"
					method="get">
					<tr>
						<td>${cart.pId}</td>
						<td><input type="text" name="qty" value="${cart.quantity}" /></td>
						<td>${cart.subtotal}</td>
						<td><img
							src="<c:url value='/resources/images/${product.pId}.jpg'/>"
							width="100" height="100" /></td>
						
						<td><a href="${cr}/deleteCartItem/${cart.cid}">DELETE</a></td>
						
						<%-- <td><span class="glyphicon glyphicon-trash"><a
								href="<c:url value="${cr}/deleteCartItem/${cart.cid}"/>"><input
									type="button" value="DELETE"
									class="btn btn-xs btn-success btn-block" /></a></span> <span
							class="glyphicon glyphicon-edit"><input type="submit"
								value="UPDATE" class="btn btn-xs btn-success btn-block" /></span></td>
				 --%>	</tr>
				</form>
			</c:forEach>


			<%-- <tr>
				<td colspan="2"><a href="<c:url value='${cr }/productlist'/>"><input
						type="submit" value="CONTINUE SHOPPING" class="button button3" /></a>
				<td colspan="3"><a href="${cr}/checkout"><input
						type="submit" value="CHECKOUT" class="button button3" /></a>
			</tr> --%>
			
			<div class="row">
			<a href="${cr}/productlist/${product.pId}">Continue Shopping</a><br>
			<a href="${cr}/checkout">Checkout</a>
			
			</div>
		</table>
		</div>
</body>
</html>