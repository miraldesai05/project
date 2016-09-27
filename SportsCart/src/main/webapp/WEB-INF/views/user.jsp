<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<%@ include file="/WEB-INF/views/header.jsp"%>
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
		<h2>Registration</h2>
		<a class="btn btn-primary" href="${flowExecutionUrl}&_eventId_home">Home</a>
		<c:url var="addAction" value="/user/add"></c:url>
		<form:form commandName="user" role="form"
			class="form-horizontal">
			<div class="form-group">
				<form:label class="control-label col-sm-4" path="fullName">Name:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter name" path="fullName" />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('fullName')}" var="err">
					  <div><span style="color: red">${err.text}</span></div>
					</c:forEach>
				</div>
			</div>

			<div class="form-group">
				<form:label class="control-label col-sm-4" path="mobileNo">Mobile No:</form:label>
				<div class="col-sm-10 col-lg-6">
					<%-- <form:errors path="mobileNo" class="error" /> --%>
					<form:input pattern="[0-9]{10}" title="Enter a 10 digit number" class="form-control col-lg-6" placeholder="Enter mobile no" path="mobileNo" />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('mobileNo')}" var="err">
					  <div><span style="color: red">${err.text}</span></div>
					</c:forEach>
				</div>
			</div>

			<div class="form-group">
				<form:label class="control-label col-sm-4" path="address">Address:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:textarea class="form-control col-lg-6" placeholder="Enter address" path="address" rows="4" cols="20" />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('address')}" var="err">
					  <div><span style="color: red">${err.text}</span></div>
					</c:forEach>
				</div>
			</div>

			<div class="form-group">
				<form:label class="control-label col-sm-4" path="city">City:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter city" path="city" />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('city')}" var="err">
					  <div><span style="color: red">${err.text}</span></div>
					</c:forEach>
				</div>
			</div>

			<div class="form-group">
				<form:label class="control-label col-sm-4" path="state">State:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter state" path="state" />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('state')}" var="err">
					  <div><span style="color: red">${err.text}</span></div>
					</c:forEach>
				</div>
			</div>
			<div class="form-group">
				<form:label class="control-label col-sm-4" path="country">Country:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter country" path="country" />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('country')}" var="err">
					  <div><span style="color: red">${err.text}</span></div>
					</c:forEach>
				</div>
			</div>
			
			<div class="form-group">
				<form:label class="control-label col-sm-4" path="email">Email:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input type="email" class="form-control col-lg-6" placeholder="Enter email" path="email" />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('email')}" var="err">
					  <div><span style="color: red">${err.text}</span></div>
					</c:forEach>
				</div>
			</div>
			
			<div class="form-group">
				<form:label class="control-label col-sm-4" path="gender">Gender:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:radiobutton path="gender" value="Male" />Male
					<form:radiobutton path="gender" value="Female" />Female
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('gender')}" var="err">
					  <div><span style="color: red">${err.text}</span></div>
					</c:forEach>
				</div>
			</div>
			
			<div class="form-group">
				<form:label class="control-label col-sm-4" path="username">Username:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter username" path="username" />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('username')}" var="err">
					  <div><span style="color: red">${err.text}</span></div>
					</c:forEach>
				</div>
			</div>
			
			<div class="form-group">
				<form:label class="control-label col-sm-4" path="password">Password:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:password pattern=".{6,8}" title="Six to eight characters" class="form-control col-lg-6" placeholder="Enter password" path="password" />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err">
					  <div><span style="color: red">${err.text}</span></div>
					</c:forEach>
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-2">
						<input name="_eventId_submit" class="btn btn-success" type="submit" value="Submit">
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>