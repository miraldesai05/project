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
		<h2>Add Product</h2>
		<c:url var="addAction" value="/product/add"></c:url>
		<form:form action="${addAction}" commandName="product" role="form" method="post"
			class="form-horizontal" enctype="multipart/form-data">
			
			<div class="form-group">
				<form:label class="control-label col-sm-4" path="subCategory.subcategoryName">Select Subcategory Name:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:select class="form-control col-lg-6" path="subCategory.subcategoryName" items="${subcategoryList}"
						itemValue="subcategoryName" itemLabel="subcategoryName" />
				</div>
			</div>
			
			<div class="form-group">
				<form:label class="control-label col-sm-4" path="supplier.supplierName">Select Supplier Name:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:select class="form-control col-lg-6" path="supplier.supplierName" items="${supplierList}"
						itemValue="supplierName" itemLabel="supplierName" />
				</div>
			</div>
			
			<div class="form-group">
				<form:label class="control-label col-sm-4" path="productName">Product Name:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter product Name" path="productName" />
				</div>
			</div>
			
			<div class="form-group">
				<form:label class="control-label col-sm-4" path="productDesc">Product Description:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter product Description" path="productDesc" />
				</div>
			</div>

			<div class="form-group">
				<form:label class="control-label col-sm-4" path="price">Price:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter price" path="price" />
				</div>
			</div>
			
			<div class="form-group">
				<form:label class="control-label col-sm-4" path="quantity">Quantity:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter quantity" path="quantity" />
				</div>
			</div>
			
			<div class="form-group">
				<form:label class="control-label col-sm-4" path="image">Select image:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input type="file" class="form-control col-lg-6" path="image"/>
				</div>
			</div> 
			
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-10">
					<c:if test="${!empty product.productName}">
						<input class="btn btn-success" type="submit" value="Edit Product">
					</c:if>
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-10">
					<c:if test="${empty product.productName}">
						<input class="btn btn-success" type="submit" value="Add Product">
					</c:if>
				</div>
			</div>
			
			
		</form:form>
	</div>
</body>
</html>