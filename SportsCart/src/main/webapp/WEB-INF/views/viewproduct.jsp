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
			$scope.productdata = ${productdetails};
			//alert($scope.productdata);
		 
		 });	
</script>
<title>Insert title here</title>
</head>
<body ng-app="myApp" ng-controller="getData">
<div class="container">
<h1>Product Details</h1>
<hr>
  <br>
  <div class="row">
    <div class="col-sm-5">
      <img style="width:300px;height:300px" src="{{productdata.image}}"/>
    </div>
    <div class="col-sm-7">
      <h3>Product Name: {{productdata.productName}}</h3>
    
      <h3>Product Description: {{productdata.productDesc}}</h3>
   
       <h3>Price: {{productdata.price}}</h3>
    
       <h3>Quantity: {{productdata.quantity}}</h3>
    
     <a href="cartitem/add?productId={{productdata.productId}}" class="btn btn-success" type="submit"><span class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
    </div>
  </div>
 </div>		
</body>
</html>