<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<%@ include file="/WEB-INF/views/header.jsp"%>
<!-- Css -->
<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/images" var="images" />
<!-- JavaScript -->
<spring:url value="/resources/js" var="js" />
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script>
<style>
footer
{
margin-top: 300px;
}
</style>
<title>Insert title here</title>
</head>
<%-- <%@include file="../shared/header.jsp"%> --%>

<body>
	<div class="container">
	<h2>Fill the Card Details</h2>
		<%-- <%@include file="../shared/menubar.jsp"%> --%>
					<form:form class="form-horizontal" modelAttribute="cardDetail">
						<div class="form-group">
						<form:label class="control-label col-sm-4" path="cardNumber">Card Number:</form:label>
							<div class="col-sm-10 col-lg-6">
							<%-- <form:errors path="cardNumber" class="error"/> --%>
							<form:input class="form-control col-lg-6" pattern="^[0-9]+$" title="Enter a valid card no" autofocus="true" placeholder="Enter a valid card no" path="cardNumber" />
								<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('cardNumber')}" var="err">
					  			<div><span style="color: red">${err.text}</span></div>
								</c:forEach>
							</div>
						</div>
						<div class="form-group">
						<form:label class="control-label col-sm-4" path="expiryMonth">Expiry Month:</form:label>
							<div class="col-sm-2">
							<%-- <form:errors path="expiryMonth" class="error"/> --%>
								<form:select path="expiryMonth" id="" class="form-control">
									<option value="" disabled selected>MM</option>
									<form:option value="1">Jan</form:option>
									<form:option value="2">Feb</form:option>
									<form:option value="3">Mar</form:option>
									<form:option value="4">Apr</form:option>
									<form:option value="5">May</form:option>
									<form:option value="6">Jun</form:option>
									<form:option value="7">July</form:option>
									<form:option value="8">Aug</form:option>
									<form:option value="9">Sep</form:option>
									<form:option value="10">Oct</form:option>
									<form:option value="11">Nov</form:option>
									<form:option value="12">Dec</form:option>
								</form:select>
								<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('expiryMonth')}" var="err">
					  			<div><span style="color: red">${err.text}</span></div>
								</c:forEach>
							</div>
						</div>
						<div class="form-group">
						<form:label class="control-label col-sm-4" path="expiryYear">Expiry Year:</form:label>
							<div class="col-sm-2">
							<%-- <form:errors path="expiryYear" class="error"/> --%>
								<form:select path="expiryYear" name="" id=""
									class="form-control">
									<option value="" disabled selected>Year</option>
									<form:option value="16">16</form:option>
									<form:option value="17">17</form:option>
									<form:option value="18">18</form:option>
									<form:option value="19">19</form:option>
									<form:option value="20">20</form:option>
									<form:option value="21">21</form:option>
									<form:option value="22">22</form:option>
									<form:option value="23">23</form:option>
									<form:option value="24">24</form:option>
									<form:option value="25">25</form:option>
									<form:option value="26">26</form:option>
									<form:option value="27">27</form:option>
								</form:select>
								<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('expiryYear')}" var="err">
					  			<div><span style="color: red">${err.text}</span></div>
								</c:forEach>
							</div>
						</div>
						<div class="form-group">
						<form:label class="control-label col-sm-4" path="cvNumber">CVV Number:</form:label>
							<div class="col-sm-10 col-lg-6">
							<%-- <form:errors path="cvNumber" class="error"/> --%>
							<form:input class="form-control col-lg-6" pattern="^[0-9]{4}$" title="Enter a 4 digit ccv" autofocus="true" placeholder="Enter a 4 digit ccv" path="cvNumber" />
								<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('cvNumber')}" var="err">
					  			<div><span style="color: red">${err.text}</span></div>
								</c:forEach>
							</div>
						</div>
						<div class="form-group">
						<form:label class="control-label col-sm-4" path="nameOnCard">Name On Card:</form:label>
							<div class="col-sm-10 col-lg-6">
							<%-- <form:errors path="nameOnCard" class="error"/> --%>
							<form:input class="form-control col-lg-6" autofocus="true" placeholder="Enter name on card" path="nameOnCard" />
								<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('nameOnCard')}" var="err">
					  			<div><span style="color: red">${err.text}</span></div>
								</c:forEach>
							</div>
						</div>
						<div class="form-group">
						<div class="col-sm-offset-4 col-sm-2">
							<input type="submit" value="Checkout"
								name="_eventId_confirmCheckout" class="btn btn-md btn-success">
							<input type="submit" value="Cancel" name="_eventId_cancel"
								class="btn btn-md btn-danger">
						</div>
						</div>
					</form:form>
			
		<%-- <%@include file="../shared/footer.jsp"%> --%>



	</div>
	<%@ include file="/WEB-INF/views/footer.jsp"%>
</body>





</html>