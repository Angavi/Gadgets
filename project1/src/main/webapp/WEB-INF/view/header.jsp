<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<!-- Angular.JS -->

<%@ page isELIgnored="false"%>
<html>
<head>
<c:set var="cr" value="${pageContext.request.contextPath}"></c:set>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">
<script
	src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>

</head>
<body style="background-color: white;">
<body>


	<div class="jain_container">

		<nav class="navbar navbar-default navbar-fixed-top" role="navigation"
			style="background-color: white;">
		<div class="container1 container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <i class="icon-menu"></i>
					Menu
				</button>
				<!-- <h1 id="logo"><a href="home" title="Stop4Gifts"><img src="resources/img/g1.png" alt="logo"/> </a></h1> -->

				<a class="navbar-brand" href="${cr}/home"> <img
					src="${cr}/resources/img/g1.png" /></a>
			</div>


			<ul class="nav navbar-nav navbar-left">

				<li class="hover"><a href="${cr}/home"><font color="brown;"
						size="4px"> Home </font></a></li>

				<security:authorize access="hasRole('ROLE_ADMIN')">
					<li class="hover"><a href="${cr}/productform"> <font
							color="brown;" size="4px"> Add New Products </font></a></li>
				</security:authorize>

				<security:authorize access="hasRole('ROLE_ADMIN')">
					<li class="hover"><a href="${cr}/categoryform"><font
							color="brown;" size="4px"> Add Category </font></a></li>
				</security:authorize>


				<security:authorize access="permitAll">
					<li class="hover"><a href="${cr}/productlist"><font
							color="brown;" size="4px"> Products </font></a></li>
				</security:authorize>

				<security:authorize access="hasRole('ROLE_ADMIN')">
					<li class="hover"><a href="${cr}/adminproductlist"><font
							color="brown;" size="4px"> AdminProducts </font></a></li>
				</security:authorize>



				<%-- <li class="hover"><a href="${cr}/categorydetails"><font
						color="brown;" size="4px"> Category </font></a></li>
 --%>




				<security:authorize access="hasRole('ROLE_ADMIN')">
					<li class="dropdown"><a href="#" data-toggle="dropdown"
						class="dropdown-toggle"><font color="brown;" size="4px">
								Supplier </font><b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="${cr}/supplierform">SupplierForm</a></li>
							<li><a href="${cr}/supplierlist">SupplierList</a></li>
						</ul></li>
				</security:authorize>



				<%-- <li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><font color="brown;" size="3px"> Select by Category</font><b class="caret"></b></a>
					<ul class="dropdown-menu">
						<c:forEach var="c" items="${categories }">
							<li><a
								href="<c:url value="/all/product/productsByCategory?searchCondition=${c.categoryDetails }"></c:url>">
									${c.categoryDetails }</a></li>
						</c:forEach>
					</ul></li>

 --%>
				<security:authorize access="hasRole('ROLE_USER')">

					<li class="hover"><a href="${cr}/ShowCart"> <font
							color="brown;" size="4px"> Cart </font></a></li>

				</security:authorize>

			</ul>




			<ul class="nav navbar-nav navbar-right">

				<c:if test="${pageContext.request.userPrincipal.name !=null }">
					<li><a href="#"><font color="brown;" size="4px">
								Welcome ${pageContext.request.userPrincipal.name }</font></a></li>
				</c:if>
				<url:url value="/registrationform" var="url"></url:url>

				<c:if test="${pageContext.request.userPrincipal.name==null }">
					<li class="hover"><a href="${url }"> <font color="brown;"
							size="4px"> SignUp </font></a></li>
					<url:url value="/login" var="url"></url:url>
					<li class="hover"><a href="${url }"><font color="brown;"
							size="4px"> SignIn </font></a></li>
				</c:if>



				<c:if test="${pageContext.request.userPrincipal.name !=null }">
					<li><a
						href="<c:url value="/j_spring_security_logout"></c:url>"><font
							color="brown;" size="4px"> logout</font></a></li>
				</c:if>
			</ul>
		</div>
		</nav>
	</div>

</body>
</body>
</html>