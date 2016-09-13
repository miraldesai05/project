<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container">
		<h2>Confirm Registration</h2>
		<c:url var="addAction" value="/user/add"></c:url>
		<form:form commandName="user" role="form"
			class="form-horizontal">
			<div class="form-group">
				<form:label class="control-label col-sm-4" path="fullName">Full name:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter full name" path="fullName" value="${user.fullName}" />
				</div>
			</div>

			<div class="form-group">
				<form:label class="control-label col-sm-4" path="mobileNo">Mobile No:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter mobile no" path="mobileNo" value="${user.mobileNo}" />
				</div>
			</div>

			<div class="form-group">
				<form:label class="control-label col-sm-4" path="address">Address:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:textarea class="form-control col-lg-6" placeholder="Enter address" path="address" rows="4" cols="20" value="${user.address}" />
				</div>
			</div>

			<div class="form-group">
				<form:label class="control-label col-sm-4" path="city">City:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter city" path="city" value="${user.city}" />
				</div>
			</div>

			<div class="form-group">
				<form:label class="control-label col-sm-4" path="state">State:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter state" path="state" value="${user.state}"/>
				</div>
			</div>
			<div class="form-group">
				<form:label class="control-label col-sm-4" path="country">Country:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter country" path="country" value="${user.country}"/>
				</div>
			</div>
			
			<div class="form-group">
				<form:label class="control-label col-sm-4" path="email">Email:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter email" path="email" value="${user.email}"/>
				</div>
			</div>
			
			<div class="form-group">
				<form:label class="control-label col-sm-4" path="gender">Gender:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:radiobutton path="gender" value="${user.gender}" />Male
					<form:radiobutton path="gender" value="${user.gender}" />Female
				</div>
			</div>
			
			<div class="form-group">
				<form:label class="control-label col-sm-4" path="username">Username:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter username" path="username" value="${user.username}" />
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-10">
						<input name="_eventId_edit" class="btn btn-success" type="submit" value="Edit">
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-10">
						<input name="_eventId_submit" class="btn btn-success" type="submit" value="Confirm Details">
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>