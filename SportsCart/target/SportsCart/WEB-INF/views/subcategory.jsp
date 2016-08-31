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
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h2>Add Subcategory</h2>
		<c:url var="addAction" value="/subcategory/add"></c:url>
		<form:form action="${addAction}" commandName="subcategory" role="form"
			class="form-horizontal">
			
			<div class="form-group">
				<form:label class="control-label col-sm-4" path="subcategoryId">Subcategory ID:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter subCategory Id" path="subcategoryId" />
				</div>
			</div>
			
			<div class="form-group">
				<form:label class="control-label col-sm-4" path="category.categoryName">Select Category Name:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:select class="form-control col-lg-6" path="category.categoryName" items="${categoryList}"
						itemValue="categoryName" itemLabel="categoryName" />
				</div>
			</div>
			
			<div class="form-group">
				<form:label class="control-label col-sm-4" path="subcategoryName">Subcategory Name:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter subcategory Name" path="subcategoryName" />
				</div>
			</div>

			<div class="form-group">
				<form:label class="control-label col-sm-4" path="subcategoryDesc">Subcategory Description:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter subcategory Description" path="subcategoryDesc" />
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-10">
					<c:if test="${!empty subcategory.subcategoryName}">
						<input class="btn btn-success" type="submit" value="Edit Subcategory">
					</c:if>
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-10">
					<c:if test="${empty subcategory.subcategoryName}">
						<input class="btn btn-success" type="submit" value="Add Subcategory">
					</c:if>
				</div>
			</div>
			
			
		</form:form>
	</div>


</body>
</html>