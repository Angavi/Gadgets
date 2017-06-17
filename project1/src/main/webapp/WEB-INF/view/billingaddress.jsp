<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ include file="header.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<jsp:include page="header.jsp"></jsp:include>
<body>


	<div class="container-fluid">

		<br>
		<br>
		<br>
		<div class="form-group">
			<label for="id"></label>
			<div class="col-md-6">
				<form:hidden path="id"></form:hidden>
				<form:errors path="id" cssStyle="color:red"></form:errors>
			</div>
		</div>


		<div class="boxed" style="border: 1px solid; width: 600px;">
			<center>
				<h3>Billing Address</h3>
			</center>
			<hr>
			<div class="form-group">
				<div class="col-md-7">
					<label for="billingaddress.streetname">Enter StreetName </label>
				</div>
				<div class="col-md-5">
					<input id="billingaddress.streetname"
						name="billingaddress.streetname" type="text" />
					<form:errors path="billingaddress.streetname" cssStyle="color:red"></form:errors>
				</div>
			</div>

			<br> <br>
			<div class="form-group">
				<div class="col-md-7">
					<label for="billingaddress.apartmentnumber">Enter
						ApartmentNumber </label>
				</div>
				<div class="col-md-5">
					<input id="billingaddress.apartmentnumber"
						name="billingaddress.apartmentnumber" type="text" />
					<form:errors path="billingaddress.apartmentnumber"
						cssStyle="color:red"></form:errors>
				</div>
			</div>


			<br>
			<div class="form-group">
				<div class="col-md-7">
					<label for="billingaddress.city">Enter City </label>
				</div>
				<div class="col-md-5">
					<input id="billingaddress.city" name="billingaddress.city"
						type="text" />
					<form:errors path="billingaddress.city" cssStyle="color:red"></form:errors>
				</div>
			</div>


			<br>
			<div class="form-group">
				<div class="col-md-7">
					<label for="billingaddress.country">Enter Country </label>
				</div>
				<div class="col-md-5">
					<input id="billingaddress.country" name="billingaddress.country"
						type="text" />
					<form:errors path="billingaddress.country" cssStyle="color:red"></form:errors>
				</div>
			</div>

			<br>
			<div class="form-group">
				<div class="col-md-7">
					<label for="billingaddress.zipcode">Enter ZipCode </label>
				</div>
				<div class="col-md-5">
					<input id="billingaddress.zipcode" name="billingaddress.zipcode"
						type="text" />
					<form:errors path="billingaddress.zipcode" cssStyle="color:red"></form:errors>
				</div>
			</div>
			<br>
		</div>
		<br> <br>
		<div>
			<div class="col-md-5">
			<a href="${contextRoot}/addAddress"><input type="button" class="btn-btn default" value="Next" /></a>
		
		<%-- <input type="submit" value="Register">
		 <a class="btn btn-danger" href="${flowExecutionUrl}&_eventId=submit">Submit</a>
		 --%>	
		 
		 </div>
		</div>

	</div>

</body>
</html>