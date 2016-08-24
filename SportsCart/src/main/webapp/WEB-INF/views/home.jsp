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
 
 </script>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
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
        <li><a href="#">About</a></li>
        <li><a href="#">Projects</a></li>
        <li><a href="users">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li  data-toggle="modal" data-target="#signup"><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li data-toggle="modal" data-target="#login"><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      </ul>
    </div>
  </div>
</nav>
</br>
</br>
</br>

<nav class="navbar navbar-default sidebar" role="navigation" style="height:128%;">
    <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-sidebar-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>      
    </div>
    
    <div class="collapse navbar-collapse" id="bs-sidebar-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="#">INDOOR SPORTS<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-home"></span></a></li>
   <!--      <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Usuarios <span class="caret"></span><span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-user"></span></a>
          <ul class="dropdown-menu forAnimate" role="menu">
            <li><a href="{{URL::to('createusuario')}}">Crear</a></li>
            <li><a href="#">Modificar</a></li>
            <li><a href="#">Reportar</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li class="divider"></li>
            <li><a href="#">Informes</a></li>
          </ul>
        </li>  -->         
        <li><a href="#">OUTDOOR SPORTS<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-th-list"></span></a></li>        
        <li><a href="#">GYM AND FITNESS<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-tags"></span></a></li>
        <li><a href="#">ACCESSORIES<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-th-list"></span></a></li>        
        <li><a href="#">SHOES<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-tags"></span></a></li>
        <li><a href="#">CLOTHING<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-th-list"></span></a></li>        
        <li><a href="#">JUNIOR<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-tags"></span></a></li>
         <li><a href="#">FANGEAR<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-tags"></span></a></li>
        <li><a href="#">BRANDS<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-tags"></span></a></li>
        
      </ul>
    </div>
  </div>
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
          <div class="carousel-caption">
            <h3>Sell $</h3>
            <p>Money Money.</p>
          </div>
        </div>

        <div class="item">
          <img src="resources/images/Shop_for_kids.jpg" alt="Image">
          <div class="carousel-caption">
            <h3>More Sell $</h3>
            <p>Lorem ipsum...</p>
          </div>
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
   
  <div class="row">
    <div class="col-sm-6"> 
      <img data-toggle="modal" data-target="#product" src="resources/images/iplb1.jpg" alt=Image width=500px height=250px>
   </div>
    <div class="col-sm-6"> 
       <img data-toggle="modal" data-target="#product" src="resources/images/hikingb2up.jpg" alt=Image width=500px height=250px>
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
      <p>Partner 1</p>
    </div>
    <div class="col-sm-3">
      <img src="resources/images/badminton.png" class="img-responsive" style="width:100%" alt="Image">
      <p>Partner 2</p>
    </div>
    <div class="col-sm-3">
      <img src="resources/images/basketball-accessories.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>Partner 3</p>
    </div>
    <div class="col-sm-3">
      <img src="resources/images/badminton-h.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>Partner 4</p>
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
  <p>Footer Text</p>
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
         <form role="form">
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password">
    </div>
    <div class="checkbox">
      <label><input type="checkbox"> Remember me</label>
    </div>
    <button type="submit" class="btn btn-success">Submit</button> 
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
          <form role="form">
      <div class="form-group">
      <label for="name">Name:</label>
      <input type="text" class="form-control" id="name" placeholder="Enter name">
    </div>
    <div class="form-group">
      <label for="contact">Contact:</label>
      <input type="text" class="form-control" id="contact" placeholder="Enter contact">
    </div>
    <div class="form-group">
      <label for="address">Address:</label>
      <textarea class="form-control" id="address" placeholder="Enter address"></textarea>
    </div>
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password">
    </div>
   
  <button type="submit" class="btn btn-success">Submit</button> 
  </form>
        </div>
        <div class="modal-footer"> 
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         </div> 
      </div>
    </div>
  </div>

<!-- Modal -->
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

</body>
</html>