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
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script>
<script>
	var myApp = angular.module('myApp', []);
	myApp.controller('getData', function($scope, $http, $location) {
		/* $scope.searchKeyword=location.search.substr(15); */
		$scope.categorydata = ${categoryList};
		//alert($scope.categorydata);
		
		$scope.orderByMe = function(group) {
        $scope.myOrderBy = group;
    }

	});
</script>
<style>
.error {
	color: #ff0000;
}
th {
	background-color: #4CAF50;
	color: white;
}
table{
	width: 100%;
}
</style>
<title>Insert title here</title>
</head>
<body ng-app="myApp" ng-controller="getData">
	<div class="container">
		<h2>Add Category</h2>
		<c:url var="addAction" value="/category/add"></c:url>
		<form:form action="${addAction}" commandName="category" role="form"
			class="form-horizontal">
			<div class="form-group">
				<form:label class="control-label col-sm-4" path="categoryId">Category ID:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter Category Id" path="categoryId" />
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
				<div class="col-sm-offset-4 col-sm-10">
					<c:if test="${!empty category.categoryName}">
						<input class="btn btn-success" type="submit" value="Edit Category">
					</c:if>
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-10">
					<c:if test="${empty category.categoryName}">
						<input class="btn btn-success" type="submit" value="Add Category">
					</c:if>
				</div>
			</div>
		</form:form>
	</div>
	<hr>

	<div class="container">
		<h2>Category List</h2>
		<div class="row"> <!-- search box row -->
		<div class="container">
			<form role="form" method="post" >
			 	<div class="row">
					<div class="col-xs-10 col-sm-6 col-md-6 col-lg-3 pull-right"> 
						<div class="form-group ">
							    <input type="text" ng-model="searchKeyword" class="form-control cols-sm-5" name="searchKeyword" id="searchKeyword" placeholder="Search.."/>
 						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
		
		<div class="table-responsive">
			<table class="table table-hover table-bordered">
				<tr>
					<th ng-click="orderByMe('categoryId')">Category ID</th>
					<th ng-click="orderByMe('categoryName')">Category Name</th>
					<th ng-click="orderByMe('desc')">Category Description</th>
					<th>View Details</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>

				<tr ng-repeat="group in categorydata | filter:searchKeyword | orderBy:myOrderBy">
					<td>{{group.categoryId}}</td>
					<td>{{group.categoryName}}</td>
					<td>{{group.desc}}</td>
					<td><a href="<c:url value='category/view/{{group.categoryId}}' />">View</a></td>
					<td><a href="<c:url value='category/edit/{{group.categoryId}}' />">Edit</a></td>
					<td><a href="<c:url value='category/remove/{{group.categoryId}}' />">Delete</a></td>
				</tr>

			</table>
		</div>
	</div>

</body>
</html>