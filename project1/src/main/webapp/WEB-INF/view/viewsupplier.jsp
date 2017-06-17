<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@ page isELIgnored="false" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ include file="header.jsp" %>

<body>
<br><br><br><br>
 

<br>
<div class=col-md-9>


SUPPLIER NAME: ${supplier.sname  }  <br>
SUPPLIER ADDRESS:${supplier.saddress }<br>
<br><br>
<url:url value="/supplierlist" var="url"></url:url>
<a href="${url}"> Back to Supplier </a>
</div>

</body>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<jsp:include page="footer.jsp"></jsp:include>


</html>