<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script>
  <script>
		var myApp = angular.module('myApp',[]);
		myApp.controller('getData', function($scope,$http,$location)
		 { 
			/* $scope.searchKeyword=location.search.substr(15); */
			$scope.supplierdata = ${supplierList};
			//alert($scope.supplierdata);
			
		$scope.orderByMe = function(group) {
        $scope.myOrderBy = group;
		}
		 
		 });
	
</script>
  <style>
  th {
    background-color: #4CAF50;
    color: white;
}
  </style>
<title>Insert title here</title> 
</head>
<body ng-app="myApp" ng-controller="getData">
<div class="container">
<h2>Add Supplier</h2>
<c:url var="addAction" value="/supplier/add"></c:url>
<form:form action="${addAction}" commandName="supplier" role="form" class="form-horizontal">
        <div class="form-group">
		<form:label class="control-label col-sm-4" path="supplierId">Supplier ID:</form:label>
		<div class="col-sm-10 col-lg-6">
		<form:input class="form-control col-lg-6" placeholder="Enter Supplier Id" path="supplierId"/>
		</div>
		</div>
		
		<div class="form-group">
		<form:label class="control-label col-sm-4" path="supplierName">Supplier Name:</form:label>
		<div class="col-sm-10 col-lg-6">
		<form:input class="form-control col-lg-6" placeholder="Enter Supplier Name" path="supplierName"/>
		</div>
		</div>
		
		<div class="form-group">
		<form:label class="control-label col-sm-4" path="supplierAddress">Supplier Address:</form:label>
		<div class="col-sm-10 col-lg-6">
		<form:input class="form-control col-lg-6" placeholder="Enter Supplier Address" path="supplierAddress"/>
		</div>
		</div>
		
		<div class="form-group">
        <div class="col-sm-offset-4 col-sm-10">
		<c:if test="${!empty supplier.supplierName}">
		<input class="btn btn-success" type="submit" value="Edit Supplier">
		</c:if>
		</div>
		</div>
		
		<div class="form-group">
        <div class="col-sm-offset-4 col-sm-10">
		<c:if test="${empty supplier.supplierName}">
		<input class="btn btn-success" type="submit" value="Add Supplier">
		</c:if>
		</div>
		</div>
</form:form>
</div>
<hr>
		<div class="container">
		<h2>Supplier List</h2>
		<input type="text" ng-model="searchKeyword">
		<div class="table-responsive">
		<table class="table table-hover table-bordered">
		<tr>
		<th ng-click="orderByMe('supplierId')">Supplier ID</th>
		<th ng-click="orderByMe('supplierName')">Supplier Name</th>
		<th ng-click="orderByMe('supplierAddress')">Supplier Address</th>
		<th>View Details</th>
		<th>Edit</th>
		<th>Delete</th>
		</tr>
		
		
			<tr ng-repeat="group in supplierdata | filter:searchKeyword | orderBy:myOrderBy">
			<td>{{group.supplierId}}</td>
			<td>{{group.supplierName}}</td>
			<td>{{group.supplierAddress}}</td>	
			<td><a href="<c:url value='supplier/view/{{group.supplierId}}' />">View</a></td>
			<td><a href="<c:url value='supplier/edit/{{group.supplierId}}' />">Edit</a></td>
			<td><a href="<c:url value='supplier/remove/{{group.supplierId}}' />">Delete</a></td>
			</tr>		
	
		</table>
		</div>
		</div>

</body>
</html>