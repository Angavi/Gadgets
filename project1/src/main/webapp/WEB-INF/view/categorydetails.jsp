<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	
	<br>
	<br>
	<div class="container">
	<br><br>
	<table id="Category Table" class="table table-bordered">
			<thead>
				<tr>
					<th><center>Category Details</center></th>
			<th><center>Action</center></th>
	</tr>
	</thead>


				<c:forEach items="${category}" var="c">
					<tr>

						<td><center>${c.categoryDetails}</center>
							<br></td>


						<td><center>
								<a href="${contextRoot}/viewcategory/${c.cid}"><span
									class="glyphicon glyphicon-info-sign"> View </span></a>
							</center> <br>


							<%-- <center>
								<a href="${contextRoot}/editcategory/${c.cid}"><span
									class="glyphicon glyphicon-pencil"> Update </span></a>
							</center> <br>
							<center>
								<a href="${cr}/deletecategory/${c.cid}"><span
									class="glyphicon glyphicon-trash"> Delete </span></a>
							</center></td> --%>

					</tr>
				</c:forEach>
		</table>
	</div>


</body>
</html>