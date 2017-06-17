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
<body>

<br><br><br><br><br>
	<form:form action="${contextRoot}/editcategory/updatecategory" modelAttribute="category" method="post">
		<fieldset>
			<div class="control-group">

				<label class="control-label" for="categoryDetails">CategoryDetails</label>
				<div class="controls">
					<input type="text" id="categoryDetails" name="categoryDetails"
						class="input-xlarge" value="${category.categoryDetails }"/>
				</div>
			</div>

			<div class="control-group">
				<!-- Button -->
				<div>
					<input type="submit" value="Add Category">
				</div>
			</div>
		</fieldset>
	</form:form>

</body>
</html>