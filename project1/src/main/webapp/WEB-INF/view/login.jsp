<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


</head>
<jsp:include page="header.jsp"></jsp:include>
<body>

<!-- style="background-color: violet;"> -->

	ENTER USERNAME AND PASSWORD
	<br> ${error } ${logout } ${registrationSuccess }

	<div class="container">
		<form action="<c:url value="j_spring_security_check"></c:url>"
			method="post">
			<br> <br> <br>
			<br>
			<br>
			<br>
			<br>


			<div class="form-group">
				<div class="col-md-2">
					<label for="j_username">Enter Username</label>
				</div>
				<div class="col-md-10">
					<input name="j_username" type="text" /> <br>
				</div>
			</div>


			<div class="form-group">
				<div class="col-md-2">
					<label for="j_password">Enter Password</label>
				</div>
				<div class="col-md-10">
					<input name="j_password" type="password" /> <br>
				</div>
			</div>

			<div class="col-md-5">
				<input type="submit" value="submit">
			</div>

		</form>
	</div>


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
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>


