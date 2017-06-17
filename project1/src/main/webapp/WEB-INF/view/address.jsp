<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<%@ include file="header.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<jsp:include page="header.jsp"></jsp:include>
<body>


		<div class="container">
		
			<form:form action="Address" modelAttribute="address" method="post">
		<div class ="boxed" style="border:1px solid; width:450px;">
		<div class="form-group">
			<div class="col-md-2">
			<label for="users.username">Enter UserName </label>
			</div>
		<div class="col-md-6">
		<input id="users.username" name="users.username" type="text"/>
			<form:errors path="users.username" cssStyle="color:red"></form:errors>
		</div>
		</div>
		
<br>
		<div class="form-group">
			<div class="col-md-2">
			<label for="users.password">Enter Password </label>
			</div>
		<div class="col-md-6">
		<input id="users.password" name="users.password" type="text"/>
			<form:errors path="users.password" cssStyle="color:red"></form:errors>
		</div>
		</div>
		</div>
		</form:form>
		</div>
		
		
		
    <button type="submit">Continue</button>


</body>
</html>