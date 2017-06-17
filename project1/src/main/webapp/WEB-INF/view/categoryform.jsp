<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@ page isELIgnored="false"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form:form action="categorydetails" modelAttribute="category" method="post">
		
		
		
		<%-- <url:url value="/categorydetails" var="url"></url:url>
	<form:form action="${url }" modelAttribute="userObj">
 --%>
		<%-- <form class="form-horizontal" action='' method="POST"> --%>
		
		
		<fieldset>

			<div class="control-group">

				<label class="control-label" for="categoryDetails">CategoryDetails</label>
				<div class="controls">
					<input type="text" id="categoryDetails" name="categoryDetails"
						class="input-xlarge">
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