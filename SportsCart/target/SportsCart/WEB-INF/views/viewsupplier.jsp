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
  <script>
		var myApp = angular.module('myApp',[]);
		myApp.controller('getData', function($scope,$http,$location)
		 { 
			/* $scope.searchKeyword=location.search.substr(15); */
			$scope.supplierdata = ${supplierdetails};
			//alert($scope.supplierdata);
		 
		 });
	
</script>
<title>Insert title here</title>
</head>
<body ng-app="myApp" ng-controller="getData">
<div class="container">
<h1>Supplier Details</h1>
<hr>
  <br>
  <div class="row">
    <div class="col-sm-5">

			<h3>Supplier Name: {{supplierdata.supplierName}}</h3>
			<h3>Supplier Address: {{supplierdata.supplierAddress}}</h3>
			
</div>
</div>
</div>
</body>
</html>