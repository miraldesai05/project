<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Sports Equipment Online</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="resources/images/Capture.PNG">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/css/style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--   <link rel="stylesheet" href="resources/css/bootstrap.min.css">
 <script type="text/javascript" src="jquery.min.js"></script>
 <script type="text/javascript" src="bootstrap.min.js"></script> -->
 <script>
 $(document).ready(function(){
     $(window).scroll(function () {
            if ($(this).scrollTop() > 50) {
                $('#back-to-top').fadeIn();
            } else {
                $('#back-to-top').fadeOut();
            }
        });
        // scroll body to 0px on click
        $('#back-to-top').click(function () {
            $('#back-to-top').tooltip('hide');
            $('body,html').animate({
                scrollTop: 0
            }, 800);
            return false;
        });
        
        $('#back-to-top').tooltip('show');

});
 $(document).ready(function(){
	    $(".dropdown").hover(            
	        function() {
	            $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true).slideDown("400");
	            $(this).toggleClass('open');        
	        },
	        function() {
	            $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true).slideUp("400");
	            $(this).toggleClass('open');       
	        }
	    );
	});
 </script>
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
        <li class="active"><a href="#">Home</a></li>
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
        <li data-toggle="modal" data-target="#signup"><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>     
        <li data-toggle="modal" data-target="#login"><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
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
 <nav class="navbar navbar-inverse">
    <div class="navbar-header">
    	<button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".js-navbar-collapse">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
	</div>
	
	<div class="collapse navbar-collapse js-navbar-collapse">
		<ul class="nav navbar-nav">
		  <c:forEach items="${categoryList}" var="category">
			<li class="dropdown mega-dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">${category.categoryName}</a>				
				<ul class="dropdown-menu mega-dropdown-menu">
				  <c:forEach items="${category.subCategory}" var="subcategory">
					<li class="col-sm-3">
						<ul>
							<li class="dropdown-header">${subcategory.subcategoryName}</li>
							<c:forEach items="${subcategory.products}" var="product">
							<li><a href="<c:url value='productview${product.productId}' />">${product.productName}</a></li>	
							</c:forEach> 
							
						</ul>
					</li>
					</c:forEach> 
				</ul>	
				</li>
				</c:forEach>  			
		</ul>
        <ul class="nav navbar-nav navbar-right">
       <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>      
      </ul>
	</div><!-- /.nav-collapse -->
  </nav>
<div class="container-fluid"> 
<div class="row">
  <div class="col-sm-8">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
	
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img src="resources/images/fitness.jpg" alt="Image">
          <!-- <div class="carousel-caption">
            <h3>Sell $</h3>
            <p>Money Money.</p>
          </div>	 -->
        </div>

        <div class="item">
          <img src="resources/images/Shop_for_kids.jpg" alt="Image">
          <!-- <div class="carousel-caption">
            <h3>More Sell $</h3>
            <p>Lorem ipsum...</p>
          </div> -->
        </div>
      </div>

      <!-- Left and right controls -->
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
      
    </div>
    <br>
   <div class="container">
  <div class="row">
    <div class="col-sm-6"> 
      <img data-toggle="modal" data-target="#product" src="resources/images/iplb1.jpg" alt=Image width=600px height=250px>
   </div>
    <div class="col-sm-6"> 
       <img data-toggle="modal" data-target="#product" src="resources/images/hikingb2up.jpg" alt=Image width=600px height=250px>
    </div>
    </div>
    </div>
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Click to return on the top page" data-toggle="tooltip" data-placement="left"><span class="glyphicon glyphicon-chevron-up"></span></a>
	    
  </div>

</div>

<hr>
</div>

<%-- <div class="container">
<%@ include file="/WEB-INF/views/new.jsp"%>
<hr>
</div> --%>

<!-- <div class="container text-center">
  <h3>What We Do</h3>
  <br>
  <div class="row">
    <div class="col-sm-3">
      <img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>Current Project</p>
    </div>
    <div class="col-sm-3">
      <img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>Project 2</p>
    </div>
    <div class="col-sm-3">
      <div class="well">
       <p>Some text..</p>
      </div>
      <div class="well">
       <p>Some text..</p>
      </div>
    </div>
    <div class="col-sm-3">
      <div class="well">
       <p>Some text..</p>
      </div>
      <div class="well">
       <p>Some text..</p>
      </div>
    </div>
  </div>
  <hr>
</div> -->

<div class="container text-center">
  <!-- <h3>Our Partners</h3> -->
  <br>
  <div class="row">
    <div class="col-sm-3">
      <img src="resources/images/home-banner-1.jpg" class="img-responsive" style="width:100%" alt="Image">
      <!-- <p>Partner 1</p> -->
    </div>
    <div class="col-sm-3">
      <img src="resources/images/badminton.png" class="img-responsive" style="width:100%" alt="Image">
     <!--  <p>Partner 2</p> -->
    </div>
    <div class="col-sm-3">
      <img src="resources/images/basketball-accessories.jpg" class="img-responsive" style="width:100%" alt="Image">
      <!-- <p>Partner 3</p> -->
    </div>
    <div class="col-sm-3">
      <img src="resources/images/badminton-h.jpg" class="img-responsive" style="width:100%" alt="Image">
      <!-- <p>Partner 4</p> -->
    </div>
   <!--  <div class="col-sm-2">
      <img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>Partner 5</p>
    </div>
    <div class="col-sm-2">
      <img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>Partner 6</p>
    </div> -->
  </div>
  <hr>
</div><br>

<div class="container">
  <br>
  <div class="row">
    <div class="col-sm-2">
      <img src="resources/images/adi.png" class="img-responsive" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-2">
      <img src="resources/images/asics.png" class="img-responsive" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-2">
      <img src="resources/images/GM update.png" class="img-responsive" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-2">
      <img src="resources/images/head.png" class="img-responsive" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-2">
      <img src="resources/images/joola.png" class="img-responsive" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-2">
      <img src="resources/images/kamachi.png" class="img-responsive" style="width:100%" alt="Image">
    </div>
  </div>
</div><br>

<footer class="container-fluid text-center">
  <p></p>
</footer>

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

<!-- Modal -->
  <div class="modal fade" id="signup" role="dialog">
    <div class="modal-dialog modal-md">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h2 class="modal-title">Registration</h2>
        </div>
        <div class="modal-body">
        <c:url var="addAction" value="/user/add"></c:url>
		<form:form action="${addAction}" commandName="user" role="form"
			class="form-horizontal">
			<div class="form-group">
				<form:label class="control-label col-sm-4" path="fullName">Full name:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter full name" path="fullName" />
				</div>
			</div>

			<div class="form-group">
				<form:label class="control-label col-sm-4" path="mobileNo">Mobile No:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter mobile no" path="mobileNo" />
				</div>
			</div>

			<div class="form-group">
				<form:label class="control-label col-sm-4" path="address">Address:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:textarea class="form-control col-lg-6" placeholder="Enter address" path="address" rows="2" cols="20" />
				</div>
			</div>

			<div class="form-group">
				<form:label class="control-label col-sm-4" path="city">City:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter city" path="city" />
				</div>
			</div>

			<div class="form-group">
				<form:label class="control-label col-sm-4" path="state">State:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter state" path="state" />
				</div>
			</div>
			<div class="form-group">
				<form:label class="control-label col-sm-4" path="country">Country:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter country" path="country" />
				</div>
			</div>
			
			<div class="form-group">
				<form:label class="control-label col-sm-4" path="email">Email:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter email" path="email" />
				</div>
			</div>
			
			<div class="form-group">
				<form:label class="control-label col-sm-4" path="gender">Gender:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:radiobutton path="gender" value="Male" />Male
					<form:radiobutton path="gender" value="Female" />Female
				</div>
			</div>
			
			<div class="form-group">
				<form:label class="control-label col-sm-4" path="username">Username:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:input class="form-control col-lg-6" placeholder="Enter username" path="username" />
				</div>
			</div>
			
			<div class="form-group">
				<form:label class="control-label col-sm-4" path="password">Password:</form:label>
				<div class="col-sm-10 col-lg-6">
					<form:password class="form-control col-lg-6" placeholder="Enter password" path="password" />
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-10">
						<input class="btn btn-success" type="submit" value="Submit">
				</div>
			</div>
		</form:form>
                 </div>
        <div class="modal-footer"> 
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         </div> 
      </div>
    </div>
  </div>

<%-- <!-- Modal -->
  <div class="modal fade" id="product" role="dialog">
    <div class="modal-dialog modal-md">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h2 class="modal-title">Product Details</h2>
        </div>
        <div class="modal-body">
         <form role="form">
    <div class="form-group">
      <img data-toggle="modal" data-target="#product" src="resources/images/Koala.jpg" alt=Image width=200px height=200px>
    </div>
    <div class="form-group">
     
    </div>
   
  </form> 
        </div>
        <div class="modal-footer"> 
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         </div> 
      </div>
    </div>
  </div>
 --%>
</body>
</html>