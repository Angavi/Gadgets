<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@ page isELIgnored="false" %>
<%@ include file="header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<%@ include file="header.jsp" %>
<body>
	
			
	<form:form action="${contextRoot}/editproduct/updateproduct" modelAttribute="product" method="post" enctype="multipart/form-data">
	
	<br><br><br>
		<div class="form-group">
		<label for="pId"></label>
		<div class="col-md-6">
		<form:hidden path="pId"></form:hidden>
		<form:errors path="pId" cssStyle="color:red"></form:errors>
		</div>
		</div>
		
		
		<div class="form-group">
		<div class="col-md-5">
		<label for="pName">Enter Product Name</label>
		</div>
		<div class="col-md-9">
		<input id="pName" name="pName" type="text" value="${product.pName }"/>
		<form:errors path="pName" cssStyle="color:red"></form:errors>
		</div>
		</div>
		
		<br>
		<div class="form-group">
		<div class="col-md-5">
		<label for="pDescription">Enter Description</label>
		</div>
		<div class="col-md-9">
		<input id="pDescription" name="pDescription" type="text" value="${product.pDescription }"/>
		<form:errors path="pDescription" cssStyle="color:red"></form:errors>
		</div>
		</div>
		
		<br>
		<div class="form-group">
		<div class="col-md-5">
		<label for="pManufacture">Enter Manufacture</label>
		</div>
		<div class="col-md-9">		
		<input id="pManufacture" name="pManufacture" type="text" value="${product.pManufacture }"/>
		<form:errors path="pManufacture" cssStyle="color:red"></form:errors>
		</div>
		</div>
		
		<br>
		<div class="form-group">
		<div class="col-md-5">
		<label for="pPrice">Enter Price</label>
		</div>
		<div class="col-md-9">
		<input id="pPrice" name="pPrice" type="text" value="${product.pPrice }"/>
		<form:errors path="pPrice" cssStyle="color:red"></form:errors>
		</div>
		</div>
		
		<br>
		<div class="form-group">
		<div class="col-md-5">
		<label for="pUnitInStock">Unit In Stock</label>
		</div>
		<div class="col-md-9">
		<input id="pUnitInStock" name="pUnitInStock" type="text" value="${product.pUnitInStock }"/>
		<form:errors path="pUnitInStock" cssStyle="color:red"></form:errors>
		</div>
		</div>
		
	
		<div class="form-group">
		<div class="col-md-12">
		
		<label for="category">Select Category</label>
		<c:forEach items="${categorydetails}" var="c">
		
		<form:radiobutton path="category.cid" value="${c.cid }"/> ${c.categoryDetails }
		
		</c:forEach>
		<div class="form-group">
		<label for="image">Upload Image</label>
		<input type="file" name="image">
		</div>
		<input type="submit" name="action" value="Update Product">
		
		
		</div>
		</div>
		</form:form>
</body>



</html>