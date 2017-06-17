<!DOCTYPE html>
<html>

<head>

<title>Gadget</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
img {
    float: centre;
    border: 2px dotted black;
    margin: 0px 0px 0px 0px;
}

.jumbotron {
    position: relative;
    background: #000 url("resources/img/s.jpg") center center;
    width: 100%;
    
    background-size: cover;
    overflow: hidden;
}
</style>

</head>

<jsp:include page="header.jsp"></jsp:include>
<body>

<div class="banner_home">
  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
      <li data-target="#myCarousel" data-slide-to="5"></li>
      <li data-target="#myCarousel" data-slide-to="6"></li>
   <!--    <li data-target="#myCarousel" data-slide-to="3"></li> -->
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      
      <div class="item active">
     <img src="resources/img/c6.JPG" alt="First Image"/>
	</div>

      <div class="item">
          <img src="resources/img/c1.jpg" alt="Second Image"/>
	</div>
    
      <div class="item">
          <img src="resources/img/c2.jpg" alt="Third Image"/>
    </div>

    <div class="item">
          <img src="resources/img/c3.jpg" alt="Fourth Image"/>
    </div>

    <div class="item">
          <img src="resources/img/c4.jpg" alt="fifth Image"/>
    </div>

    <div class="item">
          <img src="resources/img/c5.jpg" alt="sixth Image"/>
    </div>
	 <div class="item">
          <img src="resources/img/c.jpg" alt="seventh Image"/>
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
</div>
</div>
		
		<center><h1>Our Brands</h1></center>
	
	<div class="row">

		<div class="col-md-4 mr15 ">
			<div>
				<img style="margin-left: 2px; margin-bottom: 25px;"
					src="resources/img/t.jpg" alt="">
			</div>
			<div>
				<img style="margin-left: 2px; margin-bottom: 25px;"
					src="resources/img/t2.jpg" alt="">
			</div>
		</div>

		<div class="col-md-4 mr15 m115 ">
			<div>
				<img style="margin-left: 25px; margin-bottom: 25px;"
					src="resources/img/t3.jpg" alt="">
			</div>

			<div>
				<img style="margin-left: 25px; margin-bottom: 25px;"
					src="resources/img/t4.jpg" alt="">
			</div>
		</div>
		<div class="col-md-4 mr15 m115 ">
			<div>
				<img style="margin-right: 25px; margin-bottom: 25px;"
					src="resources/img/t5.jpg" alt="">
			</div>
		</div>

		<div class="col-md-12 ">
			<div>
				<img style="margin-left: 0%;  margin-bottom: 25px;" src="resources/img/t6.jpg" alt="">
			</div>
		</div>
		
		<div class="col-md-12 ">
			<div>
				<img style="margin-left: 0%;  margin-bottom: 25px;" src="resources/img/t10.jpg" alt="">
			</div>
		</div>
	</div>

	<div>
		<img style="margin-left: 0%; margin-top: 2%"
			src="resources/img/t7.jpg" alt="Cool Image" class="border" /><img
			style="margin-left: 5%; margin-top: 2%" src="resources/img/t8.jpg"
			alt="Cool Image" /><img style="margin-left: 5%; margin-top: 2%"
			src="resources/img/t9.jpg" alt="Cool Image" />
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>