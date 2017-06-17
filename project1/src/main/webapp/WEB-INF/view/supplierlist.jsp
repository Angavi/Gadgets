<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>

<html>
<head>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
</head>
<body>

<div class="container">
  <table class="table table-bordered" style="border:2px solid black;">
    
<tr>


<th><center> Supplier Name</center> </th><br>
<th><center> Supplier Address</center> </th><br>
</tr>

 <c:forEach items="${supplier}" var="s">
<tr>


<td><center>${s.sname}</center><br></td>
<td><center>  ${s.saddress}</center><br></td>


<td><center><a href="${contextRoot}/viewsupplier/${s.sid}"><span class="glyphicon glyphicon-info-sign">  View  </span></a></center>
<br>


<center><a href="${contextRoot}/editsupplier/${s.sid}"><span class="glyphicon glyphicon-pencil">  Update  </span></a></center>
<br>
<center><a href="${contextRoot}/deletesupplier/${s.sid}"><span class="glyphicon glyphicon-trash">    Delete    </span></a></center>

</td>

</tr>
</c:forEach>
</table>
</div>

<br><br><br><br><br><br><br><br><br><br><br><br><br>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>








</body>
</html>