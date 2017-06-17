<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet"
		href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<%@include file="header.jsp"%>
	
	
	<div class="container">
		<div class="row">
		<div class="col-sm-4">
				<div class="supplier-form">
					<!--sign up form-->
					<br><br><br><br><br>
					
					<form:form action="Supplier" commandName="supplier" method="POST">
							<table align="center">
							<tr>
								<td colspan="2"><center><h2>Supplier Details</h2></center></td>
							</tr>

							
							<tr>
							
								<td>SupplierID</td>
								<td><form:input path="sid" /></td>
							</tr>
							<tr>
								<td>Supplier Name</td>
								<td><form:input path="sname" /></td>
							</tr>
							<tr>
								<td>Supplier Address</td>
								<td><form:textarea path="saddress"/></td>
							</tr>

							<tr>
								<td colspan="2"><center>
										<input type="submit" value="SUBMIT" />
									</center></td>
							</tr>

						</table>
					</form:form>
					

				</div>
				<!--/supplier form-->
			</div>
		</div>
	</div>
	
	<br><br><br><br><br><br><br><br><br>
	<%@include file="footer.jsp"%>
</body>
</html>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
