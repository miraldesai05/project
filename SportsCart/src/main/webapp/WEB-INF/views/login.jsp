<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<%@ include file="/WEB-INF/views/header.jsp"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
    background: url(resources/images/sports_background_page.jpg) no-repeat fixed center center;
    background-size: cover;
}
.logo {
    width: 213px;
    height: 36px;
    margin: 30px auto;
}

.login-block {
    width: 320px;
    padding: 20px;
    background: #fff;
    border-radius: 5px;
    border: 5px solid #99ccff;
    margin: 0 auto;
}

.login-block h1 {
    text-align: center;
    color: #000;
    font-size: 18px;
    text-transform: uppercase;
    margin-top: 0;
    margin-bottom: 20px;
}

.login-block input {
    width: 100%;
    height: 42px;
    box-sizing: border-box;
    border-radius: 5px;
    border: 1px solid #99ccff;
    margin-bottom: 20px;
    font-size: 14px;
    padding: 0 20px 0 50px;
    outline: none;
}

.login-block input#username {
    background: #fff url('http://i.imgur.com/u0XmBmv.png') 20px top no-repeat;
    background-size: 16px 80px;
}

.login-block input#username:focus {
    background: #fff url('http://i.imgur.com/u0XmBmv.png') 20px bottom no-repeat;
    background-size: 16px 80px;
}

.login-block input#password {
    background: #fff url('http://i.imgur.com/Qf83FTt.png') 20px top no-repeat;
    background-size: 16px 80px;
}

.login-block input#password:focus {
    background: #fff url('http://i.imgur.com/Qf83FTt.png') 20px bottom no-repeat;
    background-size: 16px 80px;
}

.login-block input:active, .login-block input:focus {
    border: 1px solid #ff656c;
}

.login-block button {
    width: 100%;
    height: 40px;
    background: #99ccff;
    box-sizing: border-box;
    border-radius: 5px;
    border: 1px solid #99ccff;
    color: #fff;
    font-weight: bold;
    text-transform: uppercase;
    font-size: 14px;
    outline: none;
    cursor: pointer;
}

.login-block button:hover {
    background: #99ccff;
}
footer
{
margin-top: 250px;
}
</style>
<title>Insert title here</title>
</head>
<body>
<div class="logo"><img src="resources/images/Capture2.PNG" alt="Image" style="width:200px;height:51px"></div>
<div class="login-block">
		<h2>Login</h2>
 <form role="form" action="perform_login" method="POST">
      <input type="text" class="form-control" placeholder="Username" name="username" id="username" >
      <input type="password" class="form-control" placeholder="Password" name="password" id="password">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
   <button>Login</button>
   
   <center><a href="memberShip">Create your Account</a></center>
  </form> 
  <center><div style="color: red">${error}</div></center>
</div>
<%@ include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>
