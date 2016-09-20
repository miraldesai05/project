<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="shortcut icon" href="resources/images/Capture.PNG">
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/css/style.css">
 <script type="text/javascript" src="jquery.min.js"></script>
 <script type="text/javascript" src="bootstrap.min.js"></script>
<title>Sports Equipment Online</title>
</head>
<body>
<nav class="navbar navbar-fixed-top navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">SportsCart</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
       <li><a href="/SportsCart/">Home</a></li>
       <sec:authorize access="hasRole('ROLE_ADMIN')">
       <li><a href="categories">Add Category</a></li>
        <li><a href="subcategories">Add Subcategory</a></li>
        <li><a href="products">Add Product</a></li>
        <li><a href="suppliers">Add Supplier</a></li>
        </sec:authorize>
      </ul> 
    <ul class="nav navbar-nav navbar-right">
    <li style="color: white">
      	<c:if test="${pageContext.request.userPrincipal.name!= null}">
      		<h5>
				Welcome  ${pageContext.request.userPrincipal.name}
			</h5>
  		</c:if>
      	</li>  
      	<sec:authorize access="isAnonymous()">	
        <li  data-toggle="memberShip"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
<!--<li data-toggle="modal" data-target="#login"><a href=""><span class="glyphicon glyphicon-log-in"></span> Login</a></li> -->
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
        <li><a href="<c:url value="/logout" />">Logout</a></li>
        </sec:authorize>
      </ul> 
    </div>
  </div>
</nav>
</br>
</br>
</br>
<!-- Modal -->
  <div class="modal fade" id="login" role="dialog">
    <div class="modal-dialog modal-md">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h2 class="modal-title">Login</h2>
        </div>
        <div class="modal-body">
        <form role="form" action="perform_login" method="POST">
    <div class="form-group">
    <label for="username">Username:</label>
      <input type="text" class="form-control" placeholder="Enter username" name="username">
    </div>
    <div class="form-group">
     <label for="password">Password:</label>
      <input type="password" class="form-control" placeholder="Enter password" name="password">
    </div>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
 <!--    <div class="checkbox">
      <label><input type="checkbox"> Remember me</label>
    </div> -->
   <input class="btn btn-success" type="submit" value="Login">
  </form> 
        </div>
        <div class="modal-footer"> 
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         </div> 
      </div>
    </div>
  </div>

</body>
</html>