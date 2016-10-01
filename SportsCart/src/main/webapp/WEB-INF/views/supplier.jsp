<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
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
footer
{
margin-top: 300px;
}
</style>
<title>Insert title here</title> 
</head>
<body>
<div class="container">
<h2>Add Supplier</h2>
<c:url var="addAction" value="/supplier/add"></c:url>
<form:form action="${addAction}" commandName="supplier" role="form" class="form-horizontal">
		
		<div class="form-group">
				<div class="col-sm-10 col-lg-6">
				<c:if test="${!empty supplier.supplierId}">
					<form:input type="hidden" class="form-control col-lg-6" path="supplierId" />
					</c:if>
				</div>
			</div>
			
		<div class="form-group">
		<form:label class="control-label col-sm-4" path="supplierName">Supplier Name:</form:label>
		<div class="col-sm-10 col-lg-6">
		<form:input class="form-control col-lg-6" placeholder="Enter Supplier Name" path="supplierName"/>
		<form:errors path="supplierName" cssClass="error"></form:errors>
		</div>
		</div>
		
		<div class="form-group">
		<form:label class="control-label col-sm-4" path="supplierAddress">Supplier Address:</form:label>
		<div class="col-sm-10 col-lg-6">
		<form:input class="form-control col-lg-6" placeholder="Enter Supplier Address" path="supplierAddress"/>
		<form:errors path="supplierAddress" cssClass="error"></form:errors>
		</div>
		</div>
		
		<div class="form-group">
        <div class="col-sm-offset-4 col-sm-2">
		<c:if test="${!empty supplier.supplierName}">
		<input class="btn btn-success" type="submit" value="Edit Supplier">
		</c:if>
		</div>
		</div>
		
		<div class="form-group">
        <div class="col-sm-offset-4 col-sm-2">
		<c:if test="${empty supplier.supplierName}">
		<input class="btn btn-success" type="submit" value="Add Supplier">
		</c:if>
		</div>
		</div>
</form:form>
</div>
<%@ include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>