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
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script>
<style>
.error {
	color: #ff0000;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h2>Add Category</h2>
		<c:url var="addAction" value="/category/add"></c:url>
		<form:form action="${addAction}" commandName="category" role="form"
			class="form-horizontal">

			
			<div class="form-group">
				<div class="col-sm-10 col-lg-6">
				<c:if test="${!empty category.categoryId}">
					<form:input type="hidden" class="form-control col-lg-6" path="categoryId" />
					</c:if>
				</div>
			</div>
			
			
			<div class="form-group">
				<form:label class="control-label col-sm-4" path="categoryName">Category Name:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter Category Name" path="categoryName" />
					<form:errors path="categoryName" cssClass="error"></form:errors>
				</div>
			</div>

			<div class="form-group">
				<form:label class="control-label col-sm-4" path="desc">Category Description:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter Category Description" path="desc" />
					<form:errors path="desc" cssClass="error"></form:errors>
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-2">
					<c:if test="${!empty category.categoryName}">
						<input class="btn btn-success" type="submit" value="Edit Category">
					</c:if>
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-2">
					<c:if test="${empty category.categoryName}">
						<input class="btn btn-success" type="submit" value="Add Category">
					</c:if>
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>