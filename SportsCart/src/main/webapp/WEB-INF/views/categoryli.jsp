<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular-datatables/0.5.5/angular-datatables.min.js"></script>
<!-- <script type="text/javascript" src="angular-datatables.min.js"></script> -->
<script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<!-- <script type="text/javascript" src="jquery.dataTables.min.js"></script> -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css">
<!-- <link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.8.2/css/jquery.dataTables.css"> -->
<!-- <link rel="stylesheet" href="resources/css/datatables.bootstrap.css"> -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body ng-app="TestApp" ng-controller="testController">
<div class="container">
<h1>Category List</h1>
  <table class="table table-striped table-bordered" datatable="ng" dt-options="vm.dtOptions">
    <thead>
      <tr><th>Category ID</th><th>Category Name</th><th>Category Description</th><th>Action</th></tr>
    </thead>
    <tbody>
      <tr ng-repeat="group in categorydata">
        <td>{{group.categoryId}}</td>
        <td>
          {{group.categoryName}}
        </td>
        <td>{{group.desc}}</td>
		<td><div class="btn-group">
        <button type="button" class="btn btn-default btn"><i class="glyphicon glyphicon-pencil"></i></button>  
        <button type="button" class="btn btn-default btn"><i class="glyphicon glyphicon-trash"></i></button> 
        </div></td>
      </tr>
    </tbody>
  </table>
  </div>
</body>
</html>
<script>
angular.module('TestApp', ['TestApp.controllers','datatables']);
	
	angular.module('TestApp.controllers', []).controller('testController', function($scope,DTOptionsBuilder, DTColumnBuilder) {
		$scope.categorydata = ${categoryList};
		  
		$scope.vm = {};

		$scope.vm.dtOptions = DTOptionsBuilder.newOptions()
		  .withOption('order', [0, 'asc']);
		 });

</script>
