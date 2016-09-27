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
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css">
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
th {
	background-color: #4CAF50;
	color: white;
}
table{
	width: 100%;
}
.glyphicon-edit
{
color: blue;
}
.glyphicon-trash
{
color: red; 
}
</style>
<title>Insert title here</title>
</head>
<body ng-app="myApp" ng-controller="getData">
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
					<td><a href="<c:url value='category/view/{{group.categoryId}}' />"><span class="glyphicon glyphicon-info-sign"></span></a></td>
					<td><a href="<c:url value='category/edit/{{group.categoryId}}' />"><span class="glyphicon glyphicon-edit"></span></a></td>
					<td><a href="<c:url value='category/remove/{{group.categoryId}}' />"><span class="glyphicon glyphicon-trash"></span></a></td>
				</tr>

			</table>
		</div>
	</div>

</body>
</html>