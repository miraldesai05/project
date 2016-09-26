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
<title>Insert title here</title>
</head>
<%-- <%@include file="../shared/header.jsp"%> --%>

<body>
	<div class="container-fluid">
		<%-- <%@include file="../shared/menubar.jsp"%> --%>
		<div class="content">
			<div class="panel panel-primary">
				<div class="panel-heading">Shipping Address</div>
				<div class="panel-body">
					<form:form class="form-horizontal" commandName="shippingAddress">
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Line 1</label>
							<div class="col-sm-10">
								<%-- <form:errors path="line1" class="error" /> --%>
								<form:input path="line1" type="text" autofocus="true" class="form-control" />
								<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('line1')}" var="err">
					  			<div><span style="color: red">${err.text}</span></div>
								</c:forEach>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Line 2</label>
							<div class="col-sm-10">
								<%-- <form:errors path="line2" class="error" /> --%>
								<form:input path="line2" type="text" class="form-control" />
								<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('line2')}" var="err">
					  			<div><span style="color: red">${err.text}</span></div>
								</c:forEach>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">City</label>
							<div class="col-sm-10">
								<%-- <form:errors path="city" class="error" /> --%>
								<form:input path="city" type="text"  class="form-control" />
								<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('city')}" var="err">
					  			<div><span style="color: red">${err.text}</span></div>
								</c:forEach>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">State</label>
							<div class="col-sm-10">
								<%-- <form:errors path="state" class="error" /> --%>
								<form:input type="text" path="state" class="form-control"/>
								<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('state')}" var="err">
					  			<div><span style="color: red">${err.text}</span></div>
								</c:forEach>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Country</label>
							<div class="col-sm-10">
								<%-- <form:errors path="country" class="error" /> --%>
								<form:input type="text" path="country" class="form-control" />
								<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('country')}" var="err">
					  			<div><span style="color: red">${err.text}</span></div>
								</c:forEach>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Zip code</label>
							<div class="col-sm-10">
								<%-- <form:errors path="zipCode" class="error" /> --%>
								<form:input type="text" path="zipCode" pattern="^[1-9][0-9]{5}$" title="Enter a 6 digit pincode" class="form-control" />
								<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('zipCode')}" var="err">
					  			<div><span style="color: red">${err.text}</span></div>
								</c:forEach>
							</div>
						</div>
						<div class="col-md-offset-3">
							<input type="submit" name="_eventId_submitShippingAddress"
								class="btn btn-md btn-success" value="Save"> 		
							<input type="submit" name="_eventId_cancel"
								class="btn btn-md btn-danger" value="Cancel">
						</div>
					</form:form>
				</div>
			</div>
		</div>
		<%-- <%@include file="../shared/footer.jsp"%> --%>
	</div>
</body>





</html>