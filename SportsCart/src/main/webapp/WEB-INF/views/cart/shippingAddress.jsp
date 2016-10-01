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
	<h2>Add Shipping Address</h2>
		<%-- <%@include file="../shared/menubar.jsp"%> --%>
					<form:form class="form-horizontal" commandName="shippingAddress">
						<div class="form-group">
							<form:label class="control-label col-sm-4" path="line1">Line 1:</form:label>
							<div class="col-sm-10 col-lg-6">
								<%-- <form:errors path="line1" class="error" /> --%>
								<form:input class="form-control col-lg-6" autofocus="true" placeholder="Enter Line 1" path="line1" />
								<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('line1')}" var="err">
					  			<div><span style="color: red">${err.text}</span></div>
								</c:forEach>
							</div>
						</div>
						<div class="form-group">
							<form:label class="control-label col-sm-4" path="line2">Line 2:</form:label>
							<div class="col-sm-10 col-lg-6">
								<%-- <form:errors path="line2" class="error" /> --%>
								<form:input class="form-control col-lg-6" autofocus="true" placeholder="Enter Line 2" path="line2" />
								<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('line2')}" var="err">
					  			<div><span style="color: red">${err.text}</span></div>
								</c:forEach>
							</div>
						</div>
						<div class="form-group">
							<form:label class="control-label col-sm-4" path="city">City:</form:label>
							<div class="col-sm-10 col-lg-6">
								<%-- <form:errors path="city" class="error" /> --%>
								<form:input class="form-control col-lg-6" autofocus="true" placeholder="Enter city" path="city" />
								<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('city')}" var="err">
					  			<div><span style="color: red">${err.text}</span></div>
								</c:forEach>
							</div>
						</div>
						<div class="form-group">
							<form:label class="control-label col-sm-4" path="state">State:</form:label>
							<div class="col-sm-10 col-lg-6">
								<%-- <form:errors path="state" class="error" /> --%>
								<form:input class="form-control col-lg-6" autofocus="true" placeholder="Enter state" path="state" />
								<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('state')}" var="err">
					  			<div><span style="color: red">${err.text}</span></div>
								</c:forEach>
							</div>
						</div>
						<div class="form-group">
							<form:label class="control-label col-sm-4" path="country">Country:</form:label>
							<div class="col-sm-10 col-lg-6">
								<%-- <form:errors path="country" class="error" /> --%>
								<form:input class="form-control col-lg-6" autofocus="true" placeholder="Enter country" path="country" />
								<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('country')}" var="err">
					  			<div><span style="color: red">${err.text}</span></div>
								</c:forEach>
							</div>
						</div>
						<div class="form-group">
							<form:label class="control-label col-sm-4" path="zipCode">Zip code:</form:label>
							<div class="col-sm-10 col-lg-6">
								<%-- <form:errors path="zipCode" class="error" /> --%>
								<form:input class="form-control col-lg-6" pattern="^[1-9][0-9]{5}$" title="Enter a 6 digit pincode" autofocus="true" placeholder="Enter Line 1" path="zipCode" />
								<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('zipCode')}" var="err">
					  			<div><span style="color: red">${err.text}</span></div>
								</c:forEach>
							</div>
						</div>
						<div class="form-group">
						<div class="col-sm-offset-4 col-sm-2">
							<input type="submit" name="_eventId_submitShippingAddress"
								class="btn btn-md btn-success" value="Save"> 		
							<input type="submit" name="_eventId_cancel"
								class="btn btn-md btn-danger" value="Cancel">
						</div>
						</div>
					</form:form>
				</div>
<%@ include file="/WEB-INF/views/footer.jsp"%>
		<%-- <%@include file="../shared/footer.jsp"%> --%>
</body>

</html>