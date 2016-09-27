<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container">
		<h2>Login</h2>
		
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
    ${error}
 <!--    <div class="checkbox">
      <label><input type="checkbox"> Remember me</label>
    </div> -->
   <input class="btn btn-success" type="submit" value="Login">
  </form> 
</div>
</body>
</html>
