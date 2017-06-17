<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>

</head>
<body>
	<%@ include file="header.jsp"%>

	<div class="container">

		<br>
		<br>
		<br>
		<br>
		<br>
		<table id="productTable" class="table table-hower">
			<thead>
				<tr>
					<th>Image</th>
					<th>Name</th>
					<th>Category</th>
					<th>Price</th>
					<th>Description</th>
					<th>Manufacturer</th>
					<th>Action</th>
				</tr>
			</thead>
		</table>
	</div>
	<script>
		$('#productTable')
				.DataTable(
						{
							ajax : {
								url : 'http://localhost:8080/project1/get/product/list',
								dataSrc : ''
							},
							columns : [
									{
										data : 'pId',
										mRender : function(data, type, row) {
											return '<a href="${contextRoot}/viewproduct/'+data+'.png"><img src="resources/img/'+data+'.png" height="85" width="100"><br><a href="${contextRoot}/viewproduct/'+data+'"><span class="glyphicon glyphicon-info-sign">  View  </span></a>';
										}
									}, {
										data : 'pName'
									}, {
										data : 'category.categoryDetails'
									}, {
										data : 'pPrice'
									}, {
										data : 'pDescription'
									}, {
										data : 'pManufacture'
									}, {
										data : 'pId'
									} ]
						});
	</script>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>