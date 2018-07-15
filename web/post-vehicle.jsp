<html lang="en">
<head>
<title>Auto Car an Auto Mobile Category Bootstrap Responsive Website Template | About :: w3layouts</title>
<jsp:include page="functions.jsp"></jsp:include>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Auto Car Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--// Meta tag Keywords -->

<!-- css files -->
<link href="css/mislider.css" rel="stylesheet" type="text/css" />
<link href="css/mislider-custom.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" /> <!-- Bootstrap-Core-CSS -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" /> <!-- Style-CSS --> 
<link rel="stylesheet" href="css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
<!-- //css files -->

<!-- online-fonts -->
<link href="//fonts.googleapis.com/css?family=Jockey+One&amp;subset=latin-ext" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Niconne&amp;subset=latin-ext" rel="stylesheet">
<!-- //online-fonts -->
</head>
	
<body>
<!-- banner -->
	<div class="banner-2 wthree">
		<div class="container">
			<div class="banner_top">
				<div class="logo wow fadeInLeft animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInLeft;">
					<h1><a href="homepage.jsp"><span>C</span>ar For You..</a></h1>
				</div>
				<div class="banner_top_right wow fadeInRight animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInRight;">
					<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav cl-effect-14">
						<li><a href="homepage.jsp">Home</a></li>
						<li><a href="about.jsp">About Us</a></li>
						<li><a href="services.jsp">Services</a></li>
						<li><a href="gallery.jsp">Gallery</a></li>
						<li><a href="codes.jsp">Codes</a></li>
						<li><a href="contact.jsp">Contact Us</a></li>
					</ul>
                                    <%
                                                      Object user=session.getAttribute("uname");
                                                        if(user!=null)
                                                        {
                                                            String uname=user.toString();
                                                %> 
                                                <div class="user_login" style="float:right; background-color:#00e0c3; margin-right:7%;">
                                                    <ul>
                                                        <li class="dropdown"> <a href="#" data-toggle="dropdown"  aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-user-circle" aria-hidden="true"></i> <%=uname%>
                                                                <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                                            <ul class="dropdown-menu">
                                                                <li><a href="profile-settings.jsp">Profile Settings</a></li>
                                                                <li><a href="my-vehicles.jsp">My Vehicles</a></li>
                                                                <li><a href="post-vehicle.jsp">Post a Vehicle</a></li>
                                                                <li><a href="sign_out.jsp">Sign Out</a></li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <%
                                                    }
                                                %>
                                                
				
				</div><!-- /.navbar-collapse -->	
				
			</nav>
				</div>
                                               
				<div class="clearfix"> </div>
			</div>
			<!-- banner -->
		
		</div>
                                                 <center><h1 style='color:whitesmoke;'><b> Post Vehicle </b></h1></center>
	</div>
<!-- //banner -->

<!--Profile-setting-->
<section class="user_profile inner_pages">
  <div class="container">
    <div class="row">
      <div class="col-md-3 col-sm-3">
        <div class="profile_nav">
          <ul>
            <li><a href="profile-settings.jsp">Profile Settings</a></li>
            <li ><a href="my-vehicles.html">My Vehicles</a></li>
            <li class="active"><a href="post-vehicle.jsp">Post a Vehicles</a></li>
            <li><a href="sign_out.jsp">Sign Out</a></li>
          </ul>
        </div>
      </div>
      <div class="col-md-6 col-sm-8">
        <div class="profile_wrap">
            <h2 class="uppercase underline" style="text-decoration: underline; font-size: 31px;">Vehicle Details</h2>
          <form action="post_vehicle_task.jsp" enctype="multipart/form-data" method="post">

                                    <div class="form-group">
                                        <label class="control-label">Brand</label>
                                        <div class="select">
                                            <select class="form-control white_bg" id="brand" name="car_brand" onchange="display_model(this.value)" >
                                                <option value="select brand">Select Brand</option>

                                                <jsp:include page="fetch_brand.jsp"></jsp:include>

                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">Model</label>
                                        <div class="select">
                                            <select class="form-control white_bg" id="model" name="car_model" onchange="display_variant(this.value)">

                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">Variants</label>
                                        <div class="select">
                                            <select class="form-control white_bg" id="variant" name="car_variant">


                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">Price</label>
                                        <input class="form-control white_bg" id="Price" type="text" name="exp_sell_price">
                                    </div>
                                <%-----    <% String uname=session.getAttribute("uname").toString();%>---------%>
                                  <!-----    <input  id="user_id" type="text" name="user_id" value="" hidden=""/>--->

                                <div class="form-group">
                                    <label class="control-label">Upload Images  ( size = 900 x 560 )</label>
                                    <div class="vehicle_images">
                                        <div class="upload_more_img">
                                            <input name="image_url"  type="file" onchange="readURL1(this);"  >
                                            <img id="img1"  />



                                        </div>
                                    </div>
                                </div>
                                    <div class="gray-bg field-title">
                                        <h3 style="text-decoration: underline;">Basic Info</h3>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">Model Year</label>
                                        <input class="form-control white_bg" id="year" type="text" name="reg_year">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">No. of Owners</label>
                                        <input class="form-control white_bg" id="owners" type="text" name="ownership">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">KMs Driven</label>
                                        <input class="form-control white_bg" id="kws" type="text" name="kms_driven">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">Fuel Type</label>
                                        <input class="form-control white_bg" id="fuel" type="text" name="fuel_type">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">Color</label>
                                        <input class="form-control white_bg" id="color" type="text" name="color">
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label">City</label>
                                        <input class="form-control white_bg" id="city" type="text" name="city">
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label">Vehicle Overview  Description</label>
                                        <textarea class="form-control white_bg" rows="4" name="car_desc"></textarea>
                                    </div>
                                    <div>
                                        <input  type="checkbox" id="insurance" name="insurance">
                                        <label for="insurance">Insurance</label>
                                    </div>

                                    <div class="form-group">
                                        <button type="submit" class="btn">Submit Vehicle <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></button>
                                    </div>
                </form>
        
      </div>
    </div>
  </div>
</section>
<!--/Profile-setting--> 