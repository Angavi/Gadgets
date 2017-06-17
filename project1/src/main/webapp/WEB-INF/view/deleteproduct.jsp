<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@ page isELIgnored="false" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<%@ include file="header.jsp" %>

<div class="container">

<%-- <form:form action="${contextRoot}/productlist" modelAttribute="product" method="post" enctype="multipart/form-data"> --%>
		
		
		<form:form action="${contextRoot}/deleteproduct" modelAttribute="product" method="post" enctype="multipart/form-data">
<br><br><br><br>



 <url:url value="/resources/img/${product.id}.png" var="url"></url:url> 
<td><center><a href="${contextRoot}/viewproduct/${p.id}"><img src="${url }" height="85" width="100"></a></center></td>


PRODUCT NAME: ${product.name  } 
 <br>
PRICE:  ${product.price } 
 <br>
MANUFACTURE:  ${product.manufacture  }   
 <br>


<input type="submit" name="action" value="Delete Product">
 </form:form>
   </div>
		</center>
</body>
</html>