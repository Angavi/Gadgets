<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<div class="container">
		<c:forEach items="${prodlist}" var="prdt">
			<div class="row">
				<div class="col-sm-6 col-md-3">
					<a href="ProductDesc/${prdt.pId}" class="thumbnail"> <img
						src="<c:url value="/resources/images/${prdt.pId}.jpg"/>"
						alt="thumbnail" />
					</a>
					<div class="caption">
						<h4>${prdt.pName}</h4>
						<p>Rs.${prdt.pPrice}</p>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>

</body>
</html>
