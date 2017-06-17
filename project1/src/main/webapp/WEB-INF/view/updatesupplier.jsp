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
	
			
	<form:form action="${contextRoot}/editsupplier/updatesupplier" modelAttribute="supplier" method="post" >
	
	<br><br><br>
		<div class="form-group">
		<label for="sid"></label>
		<div class="col-md-6">
		<form:hidden path="sid"></form:hidden>
		<form:errors path="sid" cssStyle="color:red"></form:errors>
		</div>
		</div>
		
		
		<div class="form-group">
		<div class="col-md-5">
		<label for="sname">Enter Supplier Name</label>
		</div>
		<div class="col-md-9">
		<input id="sname" name="sname" type="text" value="${supplier.sname }"/>
		<form:errors path="sname" cssStyle="color:red"></form:errors>
		</div>
		</div>
		
		<br>
		<div class="form-group">
		<div class="col-md-5">
		<label for="saddress">Enter Address</label>
		</div>
		<div class="col-md-9">
		<input id="saddress" name="saddress" type="text" value="${supplier.saddress }"/>
		<form:errors path="saddress" cssStyle="color:red"></form:errors>
		</div>
		</div>
		
		
		<input type="submit" name="action" value="Update Supplier">
		
		
		</form:form>
</body>



</html>
		
