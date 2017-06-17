<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>


<body>

	<%@ include file="header.jsp"%>


	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="container">
		<div class="row product-detail-2">



			<div class="item active">
				<div class="row">


					<div class="col-md-4">
						<div class="card">
							<a class="img-card" href="#"> <url:url
									value="/resources/img/${pId}.png" var="url"></url:url> <img
								src="${url}" height="320" width="440" align="left"
								class="img-thumbnail">

							</a>
						</div>



					</div>
				

				<div class="col-md-5">
					<table class="table table-bordered" style="border: 1px solid black;">
						<tr>
							<!-- <h2>PRODUCT NAME:</h2> -->
							<h2>${product.pName  }</h2>
							<br>
							<h4>PRICE:</h4>
							<h6>${product.pPrice }</h6>
							<h4>MANUFACTURE:</h4>
							<h6>${product.pManufacture  }</h6>
							<h4>DESCRIPTION:</h4>
							<h6>${product.pDescription }</h6>
							<h4>Category:</h4>
							<h6>${product.category.categoryDetails }</h6>
						</tr>
						
						
					<%-- 	<a href="/addToCart/${prodinfo.prodid}"><input type="submit" 
					value="Add Cart" class="btn btn-warning btn-lg" style="height: 70px; width: 200px;"/> --%> 
							
							<div class="row">
							<div class="col-md-6 col-sm-6">
								Price:<p class="pPrice">${product.pPrice}</p>
							</div>
							
							
							<div class="col-md-6 col-sm-4">
								<a href="${cr}/addToCart/${product.pId}"><button class="btn btn-success right">ADD TO CART</button></a>
							</div> 
								
								</div>
							<%-- <form:form
									action="<c:url value="/addToCart/${prodinfo.prodid}"/>"
									method="get">
						Quantity <input type="text" name="quantity"
										class="form-control  btn-block  " />
									<input type="submit" value="AddToCart"
										class="btn btn-xs btn-success btn-block" />
								</form:form> 

</a> --%>
						<%-- /addToCart/${pId } --%>
						
						
					</table>
				</div>

			</div>
		</div>
</div>
	</div>


</body>
</html>


