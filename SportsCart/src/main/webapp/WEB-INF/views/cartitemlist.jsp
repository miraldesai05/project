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
		$scope.cartdata = ${cartItemList};
		//alert($scope.categorydata);
		
		$scope.orderByMe = function(group) {
        $scope.myOrderBy = group;
    }	
		$scope.totalPrice = function(){
			var total = 0;
			for(count=0;count<$scope.cartdata.length;count++){
				total += $scope.cartdata[count].price*$scope.cartdata[count].quantity;
			}
			return total;
		}
	});
</script>
<style>
footer
{
margin-top: 300px;
}
.table>tbody>tr>td, .table>tfoot>tr>td{
    vertical-align: middle;
}
@media screen and (max-width: 600px) {
    table#cart tbody td .form-control{
		width:20%;
		display: inline !important;
	}
	.actions .btn{
		width:36%;
		margin:1.5em 0;
	}
	
	.actions .btn-info{
		float:left;
	}
	.actions .btn-danger{
		float:right;
	}
	
	table#cart thead { display: none; }
	table#cart tbody td { display: block; padding: .6rem; min-width:320px;}
	table#cart tbody tr td:first-child { background: #333; color: #fff; }
	table#cart tbody td:before {
		content: attr(data-th); font-weight: bold;
		display: inline-block; width: 8rem;
	}
	
	
	
	table#cart tfoot td{display:block; }
	table#cart tfoot td .btn{display:block;}
	
}
</style>
<title>Insert title here</title>
</head>
<body ng-app="myApp" ng-controller="getData">	

<div class="container">
<h2>Cart List</h2>
<br>
	<table id="cart" class="table table-hover table-condensed">
    				<thead>
						<tr>
							<th style="width:50%">Product</th>
							<th style="width:10%">Price</th>
							<th style="width:8%">Quantity</th>
							<th style="width:22%" class="text-center">Subtotal</th>
							<th style="width:10%">Remove</th>
						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="group in cartdata">
							<td data-th="Product">
								<div class="row">
									<div class="col-sm-2 hidden-xs"><img style="width:40px;height:40px" src="resources/images/{{group.productId}}.jpg" class="img-responsive"/></div>
									<div class="col-sm-10">
										<h4 class="nomargin">{{group.productName}}</h4>
									</div>
								</div>
							</td>
							<td data-th="Price">{{group.price}}</td>
							<td data-th="Quantity">
								{{group.quantity}}
							</td>
							<td data-th="Subtotal" class="text-center">{{group.totalPrice}}</td>
							<td class="actions" data-th="">
								<a href="<c:url value='cartItem/remove/{{group.cartItemId}}' />" class="btn btn-danger btn-sm">
          						<span class="glyphicon glyphicon-trash"></span> 
        						</a>								
							</td>
						</tr>
					</tbody>
					<tfoot>
						<tr class="visible-xs">
							<td class="text-center"><strong>Total {{totalPrice()}}</strong></td>
						</tr>
						<tr>
							<td><a href="productdisplay" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
							<td colspan="2" class="hidden-xs"></td>
							<td class="hidden-xs text-center"><strong>Total {{totalPrice()}}</strong></td>
							<td><a href="member" class="btn btn-success btn-block">Checkout <i class="fa fa-angle-right"></i></a></td>
						</tr>
					</tfoot>
				</table>
</div>	
<%@ include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>