<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Connection.GetConnection"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE HTML>
<html lang="en">

<!-- Mirrored from themes.webmasterdriver.net/carforyou/demo/compare.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 16 Mar 2018 17:19:34 GMT -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<title>CarForYou - Responsive Car Dealer HTML5 Template</title>
<!--Bootstrap -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
<!--Custome Style -->
<link rel="stylesheet" href="assets/css/style.css" type="text/css">
<!--OWL Carousel slider-->
<link rel="stylesheet" href="assets/css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.transitions.css" type="text/css">
<!--slick-slider -->
<link href="assets/css/slick.css" rel="stylesheet">
<!--bootstrap-slider -->
<link href="assets/css/bootstrap-slider.min.css" rel="stylesheet">
<!--FontAwesome Font Style -->
<link href="assets/css/font-awesome.min.css" rel="stylesheet">

<!-- SWITCHER -->
		<link rel="stylesheet" id="switcher-css" type="text/css" href="assets/switcher/css/switcher.css" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/red.css" title="red" media="all" data-default-color="true" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/orange.css" title="orange" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/blue.css" title="blue" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/pink.css" title="pink" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/green.css" title="green" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/purple.css" title="purple" media="all" />
        
<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/images/favicon-icon/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/images/favicon-icon/apple-touch-icon-114-precomposed.html">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/images/favicon-icon/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="assets/images/favicon-icon/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="assets/images/favicon-icon/favicon.png">
<!-- Google-Font-->
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->  
<jsp:include page="functions.jsp"></jsp:include>

</head>
<body>

<!-- Start Switcher -->
<div class="switcher-wrapper">	
    <div class="demo_changer">
        <div class="demo-icon customBgColor"><i class="fa fa-cog fa-spin fa-2x"></i></div>
        <div class="form_holder">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="predefined_styles">
                        <div class="skin-theme-switcher">
                            <h4>Color</h4>
                            <a href="#" data-switchcolor="red" class="styleswitch" style="background-color:#de302f;"> </a>
                            <a href="#" data-switchcolor="orange" class="styleswitch" style="background-color:#f76d2b;"> </a>
                            <a href="#" data-switchcolor="blue" class="styleswitch" style="background-color:#228dcb;"> </a>
                            <a href="#" data-switchcolor="pink" class="styleswitch" style="background-color:#FF2761;"> </a>
                            <a href="#" data-switchcolor="green" class="styleswitch" style="background-color:#2dcc70;"> </a>
                            <a href="#" data-switchcolor="purple" class="styleswitch" style="background-color:#6054c2;"> </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /Switcher -->  

<!--Header-->
<header>
  <div class="default-header">
    <div class="container">
      <div class="row">
        <div class="col-sm-3 col-md-2">
          <div class="logo"> <a href="index-2.html"><img src="assets/images/logo.png" alt="image"/></a> </div>
        </div>
        <div class="col-sm-9 col-md-10">
          <div class="header_info">
            <div class="header_widgets">
              <div class="circle_icon"> <i class="fa fa-envelope" aria-hidden="true"></i> </div>
              <p class="uppercase_text">For Support Mail us : </p>
              <a href="mailto:info@example.com">info@example.com</a> </div>
            <div class="header_widgets">
              <div class="circle_icon"> <i class="fa fa-phone" aria-hidden="true"></i> </div>
              <p class="uppercase_text">Service Helpline Call Us: </p>
              <a href="tel:61-1234-5678-09">+61-1234-5678-9</a> </div>
            <div class="social-follow">
              <ul>
                <li><a href="#"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-google-plus-square" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
              </ul>
            </div>
            <!--<div class="login_btn"> <a href="#loginform" class="btn btn-xs uppercase" data-toggle="modal" data-dismiss="modal">Login / Register</a> </div>-->
            <jsp:include page="Register.jsp"></jsp:include>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <!-- Navigation -->
 <jsp:include page="header.jsp"></jsp:include> 
  <!-- Navigation end --> 
  
</header>
<!-- /Header --> 

<!--Page Header-->
<section class="page-header compare_page">
  <div class="container">
    <div class="page-header_wrap">
      <div class="page-heading">
        <h1>Compare Inventorys</h1>
      </div>
      <ul class="coustom-breadcrumb">
        <li><a href="#">Home</a></li>
        <li>Compare Inventorys</li>
      </ul>
    </div>
  </div>
  <!-- Dark Overlay-->
  <div class="dark-overlay"></div>
</section>
<!-- /Page Header--> 

<!-- Filter-Form -->
<section id="filter_form" class="inner-filter gray-bg">
  <div class="container">
    <h3>Find Your Dream Car <span>(Easy search from here)</span></h3>
    <div class="row">
      <form action="#" method="get">
        <div class="form-group col-md-3 col-sm-6 black_input">
          <div class="select">
            <select class="form-control">
              <option value="">Select Location </option>
              <option value="">Location 1 </option>
              <option value="">Location 1 </option>
            </select>
          </div>
        </div>
        <div class="form-group col-md-3 col-sm-6 black_input">
          <div class="select">
            <select class="form-control">
              <option>Select Brand</option>
              <option>Audi</option>
              <option>BMW</option>
              <option>Nissan</option>
              <option>Toyota</option>
            </select>
          </div>
        </div>
        <div class="form-group col-md-3 col-sm-6 black_input">
          <div class="select">
            <select class="form-control">
              <option>Select Model</option>
              <option>Series 1</option>
              <option>Series 2</option>
              <option>Series 3</option>
            </select>
          </div>
        </div>
        <div class="form-group col-md-3 col-sm-6 black_input">
          <div class="select">
            <select class="form-control">
              <option>Year of Model </option>
              <option>2016</option>
              <option>2015</option>
              <option>2014</option>
            </select>
          </div>
        </div>
        <div class="form-group col-md-6 col-sm-6 black_input">
          <label class="form-label">Price Range ($)</label>
          <input id="price_range" type="text" class="span2" value="" data-slider-min="50" data-slider-max="6000" data-slider-step="5" data-slider-value="[1000,5000]"/>
        </div>
        <div class="form-group col-md-3 col-sm-6 black_input">
          <div class="select">
            <select class="form-control">
              <option>Type of Car </option>
              <option>New Car</option>
              <option>Used Car</option>
            </select>
          </div>
        </div>
        <div class="form-group col-md-3 col-sm-6">
          <button type="submit" class="btn btn-block"><i class="fa fa-search" aria-hidden="true"></i> Search Car </button>
        </div>
      </form>
    </div>
  </div>
</section>
<!-- /Filter-Form --> 

<!--Compare-->
<section class="compare-page inner_pages">
  <div class="container">
    <div class="compare_info">
      <h4>Compare <%=request.getParameter("car_brand1")%> <%=request.getParameter("car_model1")%> <%=request.getParameter("car_variant1")%> and <%=request.getParameter("car_brand2")%> <%=request.getParameter("car_model2")%> <%=request.getParameter("car_variant2")%></h4>

      
      <%
      String brand_id1=request.getParameter("car_brand1");
      String model_id1=request.getParameter("car_model1");
      String variant_id1=request.getParameter("car_variant1");
       String brand_id2=request.getParameter("car_brand2");
      String model_id2=request.getParameter("car_model2");
      String variant_id2=request.getParameter("car_variant2");
     
      Connection con=null;
      try
      {
          con=GetConnection.getConnection();
          
          //..............................Engine Details...............................................
          
          String sql="select * from enginedetails_master where brand_id=? and model_id=? and variant_id=?";
          PreparedStatement ps=con.prepareStatement(sql);
          ps.setString(1, brand_id1);
          ps.setString(2, model_id1);
          ps.setString(3, variant_id1);
          
          ResultSet rs=ps.executeQuery();
          
          
          String sql1="select * from enginedetails_master where brand_id=? and model_id=? and variant_id=?";
          PreparedStatement ps1=con.prepareStatement(sql1);
          ps1.setString(1, brand_id2);
          ps1.setString(2, model_id2);
          ps1.setString(3, variant_id2);
          
          ResultSet rs1=ps1.executeQuery();
          
          
          //...........................................Transmission Details........................................
          
          String sql2="select * from transdetails_master where brand_id=? and model_id=? and variant_id=?";
          PreparedStatement ps2=con.prepareStatement(sql2);
          ps2.setString(1, brand_id1);
          ps2.setString(2, model_id1);
          ps2.setString(3, variant_id1);
          
          ResultSet rs2=ps2.executeQuery();
          
          
          String sql3="select * from transdetails_master where brand_id=? and model_id=? and variant_id=?";
          PreparedStatement ps3=con.prepareStatement(sql3);
          ps3.setString(1, brand_id2);
          ps3.setString(2, model_id2);
          ps3.setString(3, variant_id2);
          
          ResultSet rs3=ps3.executeQuery();
          
          
          //..................................Suspension Details...........................................
      
          String sql4="select * from suspensiondetails_master where brand_id=? and model_id=? and variant_id=?";
          PreparedStatement ps4=con.prepareStatement(sql4);
          ps4.setString(1, brand_id1);
          ps4.setString(2, model_id1);
          ps4.setString(3, variant_id1);
          
          ResultSet rs4=ps4.executeQuery();
          
          
          String sql5="select * from suspensiondetails_master where brand_id=? and model_id=? and variant_id=?";
          PreparedStatement ps5=con.prepareStatement(sql5);
          ps5.setString(1, brand_id2);
          ps5.setString(2, model_id2);
          ps5.setString(3, variant_id2);
          
          ResultSet rs5=ps5.executeQuery();
         
      

          //.................................Steering Details.............................................
          
          String sql6="select * from steeringdetails_master where brand_id=? and model_id=? and variant_id=?";
          PreparedStatement ps6=con.prepareStatement(sql6);
          ps6.setString(1, brand_id1);
          ps6.setString(2, model_id1);
          ps6.setString(3, variant_id1);
          
          ResultSet rs6=ps6.executeQuery();
          
          
          String sql7="select * from steeringdetails_master where brand_id=? and model_id=? and variant_id=?";
          PreparedStatement ps7=con.prepareStatement(sql7);
          ps7.setString(1, brand_id2);
          ps7.setString(2, model_id2);
          ps7.setString(3, variant_id2);
          
          ResultSet rs7=ps7.executeQuery();
         

          //.....................................Performance Details.......................................
          
          String sql8="select * from performdetails_master where brand_id=? and model_id=? and variant_id=?";
          PreparedStatement ps8=con.prepareStatement(sql8);
          ps8.setString(1, brand_id1);
          ps8.setString(2, model_id1);
          ps8.setString(3, variant_id1);
          
          ResultSet rs8=ps8.executeQuery();
          
          
          String sql9="select * from performdetails_master where brand_id=? and model_id=? and variant_id=?";
          PreparedStatement ps9=con.prepareStatement(sql9);
          ps9.setString(1, brand_id2);
          ps9.setString(2, model_id2);
          ps9.setString(3, variant_id2);
          
          ResultSet rs9=ps9.executeQuery();
         

          //.......................................Fuel Details............................................
          
          
          String sql10="select * from fueldetails_master where brand_id=? and model_id=? and variant_id=?";
          PreparedStatement ps10=con.prepareStatement(sql10);
          ps10.setString(1, brand_id1);
          ps10.setString(2, model_id1);
          ps10.setString(3, variant_id1);
          
          ResultSet rs10=ps10.executeQuery();
          
          
          String sql11="select * from fueldetails_master where brand_id=? and model_id=? and variant_id=?";
          PreparedStatement ps11=con.prepareStatement(sql11);
          ps11.setString(1, brand_id2);
          ps11.setString(2, model_id2);
          ps11.setString(3, variant_id2);
          
          ResultSet rs11=ps11.executeQuery();
          
      
          //.................................Tyre Details................................................
          
          String sql12="select * from tyredetails_master where brand_id=? and model_id=? and variant_id=?";
          PreparedStatement ps12=con.prepareStatement(sql12);
          ps12.setString(1, brand_id1);
          ps12.setString(2, model_id1);
          ps12.setString(3, variant_id1);
          
          ResultSet rs12=ps12.executeQuery();
          
          
          String sql13="select * from tyredetails_master where brand_id=? and model_id=? and variant_id=?";
          PreparedStatement ps13=con.prepareStatement(sql13);
          ps13.setString(1, brand_id2);
          ps13.setString(2, model_id2);
          ps13.setString(3, variant_id2);
          
          ResultSet rs13=ps13.executeQuery();
          

          //..................................Seating Details..........................................
          

          String sql14="select * from seatingdetails_master where brand_id=? and model_id=? and variant_id=?";
          PreparedStatement ps14=con.prepareStatement(sql14);
          ps14.setString(1, brand_id1);
          ps14.setString(2, model_id1);
          ps14.setString(3, variant_id1);
          
          ResultSet rs14=ps14.executeQuery();
          
          
          String sql15="select * from seatingdetails_master where brand_id=? and model_id=? and variant_id=?";
          PreparedStatement ps15=con.prepareStatement(sql15);
          ps15.setString(1, brand_id2);
          ps15.setString(2, model_id2);
          ps15.setString(3, variant_id2);
          
          ResultSet rs15=ps15.executeQuery();
          
      
          //.............................convenience  Details..............................................
          
          
          
          String sql16="select * from conveniencedetails_master where brand_id=? and model_id=? and variant_id=?";
          PreparedStatement ps16=con.prepareStatement(sql16);
          ps16.setString(1, brand_id1);
          ps16.setString(2, model_id1);
          ps16.setString(3, variant_id1);
          
          ResultSet rs16=ps16.executeQuery();
          
          
          String sql17="select * from conveniencedetails_master where brand_id=? and model_id=? and variant_id=?";
          PreparedStatement ps17=con.prepareStatement(sql17);
          ps17.setString(1, brand_id2);
          ps17.setString(2, model_id2);
          ps17.setString(3, variant_id2);
          
          ResultSet rs17=ps17.executeQuery();


          //.............................Interior Details....................................................
          
          String sql18="select * from interiordetails_master where brand_id=? and model_id=? and variant_id=?";
          PreparedStatement ps18=con.prepareStatement(sql18);
          ps18.setString(1, brand_id1);
          ps18.setString(2, model_id1);
          ps18.setString(3, variant_id1);
          
          ResultSet rs18=ps18.executeQuery();
          
          
          String sql19="select * from interiordetails_master where brand_id=? and model_id=? and variant_id=?";
          PreparedStatement ps19=con.prepareStatement(sql19);
          ps19.setString(1, brand_id2);
          ps19.setString(2, model_id2);
          ps19.setString(3, variant_id2);
          
          ResultSet rs19=ps19.executeQuery();
 

          //...........................Exterior Details....................................................
          
          
          String sql20="select * from exteriordetails_master where brand_id=? and model_id=? and variant_id=?";
          PreparedStatement ps20=con.prepareStatement(sql20);
          ps20.setString(1, brand_id1);
          ps20.setString(2, model_id1);
          ps20.setString(3, variant_id1);
          
          ResultSet rs20=ps20.executeQuery();
          
          
          String sql21="select * from exteriordetails_master where brand_id=? and model_id=? and variant_id=?";
          PreparedStatement ps21=con.prepareStatement(sql21);
          ps21.setString(1, brand_id2);
          ps21.setString(2, model_id2);
          ps21.setString(3, variant_id2);
          
          ResultSet rs21=ps21.executeQuery();
          

          //......................................Entertain Details..........................................
          

          String sql22="select * from entertaindetails_master where brand_id=? and model_id=? and variant_id=?";
          PreparedStatement ps22=con.prepareStatement(sql22);
          ps22.setString(1, brand_id1);
          ps22.setString(2, model_id1);
          ps22.setString(3, variant_id1);
          
          ResultSet rs22=ps22.executeQuery();
          
          
          String sql23="select * from entertaindetails_master where brand_id=? and model_id=? and variant_id=?";
          PreparedStatement ps23=con.prepareStatement(sql23);
          ps23.setString(1, brand_id2);
          ps23.setString(2, model_id2);
          ps23.setString(3, variant_id2);
          
          ResultSet rs23=ps23.executeQuery();
          
          
          //....................................Dimension Details............................................
          
          
          String sql24="select * from dimensiondetails_master where brand_id=? and model_id=? and variant_id=?";
          PreparedStatement ps24=con.prepareStatement(sql24);
          ps24.setString(1, brand_id1);
          ps24.setString(2, model_id1);
          ps24.setString(3, variant_id1);
          
          ResultSet rs24=ps24.executeQuery();
          
          
          String sql25="select * from dimensiondetails_master where brand_id=? and model_id=? and variant_id=?";
          PreparedStatement ps25=con.prepareStatement(sql25);
          ps25.setString(1, brand_id2);
          ps25.setString(2, model_id2);
          ps25.setString(3, variant_id2);
          
          ResultSet rs25=ps25.executeQuery();
          


          //...............................Safety Features....................................................
          

          String sql26="select * from safetyfeatures_master where brand_id=? and model_id=? and variant_id=?";
          PreparedStatement ps26=con.prepareStatement(sql26);
          ps26.setString(1, brand_id1);
          ps26.setString(2, model_id1);
          ps26.setString(3, variant_id1);
          
          ResultSet rs26=ps26.executeQuery();
          
          
          String sql27="select * from safetyfeatures_master where brand_id=? and model_id=? and variant_id=?";
          PreparedStatement ps27=con.prepareStatement(sql27);
          ps27.setString(1, brand_id2);
          ps27.setString(2, model_id2);
          ps27.setString(3, variant_id2);
          
          ResultSet rs27=ps27.executeQuery();
          
          
          //................................done..................................................................

          
      %>
      
      
      
      
      
      
      
      
      
      
      
      
      
      <div class="compare_product_info"> 
        <!--Basic-Info-Table-->
         <div class="panel-group" id="accordion">
    <div class="inventory_info_list">
      <div class="listing_heading">
          <div>   <a data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="false"  >Engine Details</a></div>
          <div>&nbsp;</div>
            <div>&nbsp;</div>
          
          
       
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
        <div class="panel-body">
        <ul>
            <li class="info_heading">
              <div>Engine Type</div>
              <div>Engine Description</div>
               <div>Engine Displacement</div>
              <div>No. of Cylinders</div>
              <div>Max Power</div>
              <div>Max Torque</div>
              <div>Fuel Supply System</div>
              <div>Turbo Charger</div>
              <div>Super Charger</div>
            </li>
            <%
            if(rs.next())
            {
            %>
            <li>
              <div><%=rs.getString("engine_type")%></div>
              
              <div><%=rs.getString("engine_desc")%></div>
              <div><%=rs.getInt("engine_displacement")%></div>
              <div><%=rs.getInt("no_of_cylinders")%></div>
              <div><%=rs.getString("max_power")%></div>
              <div><%=rs.getString("max_torque")%></div>
              <div><%=rs.getString("fuel_supply_system")%></div>
              <%
              if(rs.getBoolean("turbo_charger")==true)
              {
              %>
            <div><i class="fa fa-check" aria-hidden="false"></i></div>
            <%
                }
                else
                {
                %>
            <div><i class="fa fa-close" aria-hidden="false"></i></div>
            
            
            <%
                }   
            %>
             <%
             if(rs.getBoolean("super_charger")==true)
              {
              %>
            <div><i class="fa fa-check" aria-hidden="false"></i></div>
            <%
                }
                else
                {
                %>
            <div><i class="fa fa-close" aria-hidden="false"></i></div>
            
            
            <%
                }
             
             %> 
            
            
            </li>
            <%
            }
            if(rs1.next())
            {
            %>
            <li>
              <div><%=rs1.getString("engine_type")%></div>
              
              <div><%=rs1.getString("engine_desc")%></div>
              <div><%=rs1.getInt("engine_displacement")%></div>
              <div><%=rs1.getInt("no_of_cylinders")%></div>
              <div><%=rs1.getString("max_power")%></div>
              <div><%=rs1.getString("max_torque")%></div>
              <div><%=rs1.getString("fuel_supply_system")%></div>
              <%
              if(rs1.getBoolean("turbo_charger")==true)
              {
              %>
            <div><i class="fa fa-check" aria-hidden="false"></i></div>
            <%
                }
                else
                {
                %>
            <div><i class="fa fa-close" aria-hidden="false"></i></div>
            
            
            <%
                }   
            %>
             <%
             if(rs1.getBoolean("super_charger")==true)
              {
              %>
            <div><i class="fa fa-check" aria-hidden="false"></i></div>
            <%
                }
                else
                {
                %>
            <div><i class="fa fa-close" aria-hidden="false"></i></div>
            
            
            <%
                }
             
             %> 
            
            </li>
            <%
            }
             %>
           </ul>
          </div>
      </div>
    </div>
      
        
        <!-------------------------------------------------------Transmission Deatails-------------------------------------->
    <div class="inventory_info_list">
      <div class="listing_heading">
          <div>   <a data-toggle="collapse" data-parent="#accordion" href="#collapse2" aria-expanded="false">Transmission Details</a></div>
          <div>&nbsp;</div>
            <div>&nbsp;</div>
          
          
       
      </div>
        <div id="collapse2" class="panel-collapse collapse ">
        <div class="panel-body">
          <ul>
            <li class="info_heading">
              <div>Transmission Type</div>
              <div>Gear Box</div>
              <div>Drive Type</div>
            </li>
            <%
            if(rs2.next())
            {
            %>
            <li>
              <div><%=rs2.getString("trans_type")%></div>
              <div><%=rs2.getString("gear_box")%></div>
              <div><%=rs2.getString("drive_type")%></div>
            </li>
            <%
            }
            if(rs3.next())
            {
            %>
            <li>
              <div><%=rs3.getString("trans_type")%></div>
              <div><%=rs3.getString("gear_box")%></div>
              <div><%=rs3.getString("drive_type")%></div>
            </li>
            <%
            }
            %>
          </ul>
        </div>
        </div>
    </div>
       
        <!-------------------------------------------------------Suspension Deatails-------------------------------------->
       
        <div class="inventory_info_list">
      <div class="listing_heading">
          <div>   <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Suspension Details</a></div>
          <div>&nbsp;</div>
            <div>&nbsp;</div>
          
          
       
      </div>
        <div id="collapse3" class="panel-collapse collapse ">
        <div class="panel-body">
    
          <ul>
            <li class="info_heading">
              <div>Front Suspension</div>
              <div>Rear Suspension</div>
              </li>
              <%
              if(rs4.next())
              {
              %>
              
            <li>
              <div><%=rs4.getString("front_susp")%></div>
              <div><%=rs4.getString("rear_susp")%></div>
              
            </li>
            <%
            }
            if(rs5.next())
            {
            %>
            <li>
              <div><%=rs5.getString("front_susp")%></div>
              <div><%=rs5.getString("rear_susp")%></div>
              
            </li>
            <%
            }
            %>
            </ul>
        </div>
        </div>
        </div>
        
              
              <!-------------------------------------------------------Steering Deatails-------------------------------------->
             
       <div class="inventory_info_list">
      <div class="listing_heading">
          <div>   <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">Steering Details</a></div>
          <div>&nbsp;</div>
            <div>&nbsp;</div>
          
          
       
      </div>
        <div id="collapse4" class="panel-collapse collapse ">
        <div class="panel-body">
              <ul>
            <li class="info_heading">
              <div>Steering Type</div>
              <div>Steering Column</div>
              <div>Turn Radius</div>
              </li>
              
              <%
              if(rs6.next())
              {
              %>
            <li>
              <div><%=rs6.getString("steer_type")%></div>
              <div><%=rs6.getString("steer_column")%></div>
              <div><%=rs6.getDouble("turn_radius")%></div>
              
            </li>
            <%
            }
            if(rs7.next())
            {
            %>
            <li>
              <div><%=rs7.getString("steer_type")%></div>
              <div><%=rs7.getString("steer_column")%></div>
              <div><%=rs7.getDouble("turn_radius")%></div>
              
            </li>
            <%
            }
            %>
            </ul>
        </div>
        </div>
       </div>
        
         <!-------------------------------------------------------Car Performance-------------------------------------->
             
        
        <div class="inventory_info_list">
      <div class="listing_heading">
          <div>   <a data-toggle="collapse" data-parent="#accordion" href="#collapse5">Car Performance</a></div>
          <div>&nbsp;</div>
            <div>&nbsp;</div>
          
          
       
      </div>
        <div id="collapse5" class="panel-collapse collapse ">
        <div class="panel-body">
      <ul>
            <li class="info_heading">
              <div>Top Speed</div>
              <div>Accelerate</div>
              </li>
              
              <%
              if(rs8.next())
              {
              %>
            <li>
              <div><%=rs8.getInt("top_speed")%></div>
              <div><%=rs8.getDouble("accelarate")%></div>
              
            </li>
            <%
            }
            if(rs9.next())
            {
            %>
            <li>
              <div><%=rs9.getInt("top_speed")%></div>
              <div><%=rs9.getDouble("accelarate")%></div>
              
            </li>
            <%
            }
            %>
            
            </ul>
        </div>
        </div>
        </div>
        
       
              <!-------------------------------------------------------Car Fuel-------------------------------------->
         
              
        <div class="inventory_info_list">
      <div class="listing_heading">
          <div>   <a data-toggle="collapse" data-parent="#accordion" href="#collapse6">Car Fuel Details</a></div>
          <div>&nbsp;</div>
            <div>&nbsp;</div>
          
          
       
      </div>
        <div id="collapse6" class="panel-collapse collapse ">
        <div class="panel-body">
      <ul>
            <li class="info_heading">
              <div>City Mileage</div>
              <div>Arai Mileage</div>
              <div>Fuel Type</div>
              <div>Tank Capacity</div>
              <div>Emission Norm</div>
              
              </li>
              
              <%
              if(rs10.next())
              {
              %>
            <li>
              <div><%=rs10.getDouble("city_mileage")%></div>
              <div><%=rs10.getDouble("arai_mileage")%></div>
              <div><%=rs10.getString("fuel_type")%></div>
              <div><%=rs10.getInt("tank_capacity")%></div>
              <div><%=rs10.getString("emission_norm")%></div>
              
            </li>
            <%
            }
            if(rs11.next())
            {
            %>
            <li>
              <div><%=rs11.getDouble("city_mileage")%></div>
              <div><%=rs11.getDouble("arai_mileage")%></div>
              <div><%=rs11.getString("fuel_type")%></div>
              <div><%=rs11.getInt("tank_capacity")%></div>
              <div><%=rs11.getString("emission_norm")%></div>
              
            </li>
            <%
            }
            %>
          </ul>
        </div>
        </div>
        </div>
              <!-------------------------------------------------------Tyre Details-------------------------------------->
         
              
         <div class="inventory_info_list">
      <div class="listing_heading">
          <div>   <a data-toggle="collapse" data-parent="#accordion" href="#collapse7">Tyre Details</a></div>
          <div>&nbsp;</div>
            <div>&nbsp;</div>
          
          
       
      </div>
        <div id="collapse7" class="panel-collapse collapse ">
        <div class="panel-body">
    
          <ul>
            <li class="info_heading">
              <div>Tyre Size</div>
              <div>Tyre Type</div>
              <div>Wheel Size</div>
              </li>
              
              <%
              if(rs12.next())
              {
              %>
            <li>
              <div><%=rs12.getString("tyre_size")%></div>
              <div><%=rs12.getString("tyre_type")%></div>
              <div><%=rs12.getInt("wheel_size")%></div>
              
            </li>
            <%
            }
            if(rs13.next())
            {
            %>
            <li>
              <div><%=rs13.getString("tyre_size")%></div>
              <div><%=rs13.getString("tyre_type")%></div>
              <div><%=rs13.getInt("wheel_size")%></div>
              
            </li>
            <%
            }
            %>
            </ul>
        </div>
        </div>
         </div>
              
              <!-------------------------------------------------------Seating Details-------------------------------------->
         
        
        <div class="inventory_info_list">
      <div class="listing_heading">
          <div>   <a data-toggle="collapse" data-parent="#accordion" href="#collapse8">Seating Details</a></div>
          <div>&nbsp;</div>
            <div>&nbsp;</div>
          
          
       
      </div>
        <div id="collapse8" class="panel-collapse collapse ">
        <div class="panel-body">
      <ul>
            <li class="info_heading">
              <div>Seat Capacity</div>
              <div>No. of Doors</div>
              <div>Fld_rear_seats</div>
              </li>
              
              <%
              if(rs14.next())
              {
              %>
            <li>
              <div><%=rs14.getInt("seat_capacity")%></div>
              <div><%=rs14.getInt("no_of_doors")%></div>
              <%
              if(rs14.getBoolean("fld_rear_seats")==true)
              {
                      %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
              <%
              }
              else
            {   
             %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
              <%
                  }
              %>
            </li>
            <%
            }
            if(rs15.next())
            {
            %>
            <li>
              <div><%=rs15.getInt("seat_capacity")%></div>
              <div><%=rs15.getInt("no_of_doors")%></div>
              <%
              if(rs15.getBoolean("fld_rear_seats")==true)
              {
                      %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
              <%
              }
              else
            {   
             %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
              <%
                  }
              %>
              
            </li>
            <%
            }
            %>
            </ul>
        </div>
        </div>
        </div>
              
              <!-------------------------------------------------------Convenience Details-------------------------------------->
         
              
              
        <div class="inventory_info_list">
      <div class="listing_heading">
          <div>   <a data-toggle="collapse" data-parent="#accordion" href="#collapse9">Convenience Details</a></div>
          <div>&nbsp;</div>
            <div>&nbsp;</div>
          
          
       
      </div>
        <div id="collapse9" class="panel-collapse collapse ">
        <div class="panel-body">
    
          <ul>
            <li class="info_heading">
              <div>Power Steering</div>
              <div>Power Win Front</div>
              <div>Power Win Rear</div>
              <div>Remote trunk</div>
              <div>Low Fuel Light</div>
              <div>Rear AC vents</div>
              <div>Steering mnt control</div>
              <div>Cruise Control</div>
              <div>Park sensors</div>
              <div>Park Camera</div>
              <div>GPS</div>
              <div>Keyless entry </div>
              <div>Engine start stop button</div>
              <div>Drive Modes</div>
              <div>Cooled Glove BOx</div>
              <div>Voice Control</div>
              <div>Touch set nav System</div>
              
              </li>
              
             <%
             if(rs16.next())
             {
             %> 
            <li>
             <%
             if(rs16.getBoolean("pwr_steer")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           <%
             if(rs16.getBoolean("pwr_win_front")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           <%
             if(rs16.getBoolean("pwr_win_rear")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           <%
             if(rs16.getBoolean("remote_trunk")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           <%
             if(rs16.getBoolean("low_fuel_light")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           <%
             if(rs16.getBoolean("rear_ac_vents")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           <%
             if(rs16.getBoolean("steer_mnt_ctrl")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           
           <%
             if(rs16.getBoolean("cruise_ctrl")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           <%
             if(rs16.getBoolean("park_sensors")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           
           <%
             if(rs16.getBoolean("park_camera")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           
           <%
             if(rs16.getBoolean("gps")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           <%
             if(rs16.getBoolean("keyless_entry")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           <%
             if(rs16.getBoolean("en_start_stop_btn")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           
              <div><%=rs16.getString("drive_modes")%></div>
           
           
           <%
             if(rs16.getBoolean("cooled_glove_box")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           <%
             if(rs16.getBoolean("voice_ctrl")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           <%
             if(rs16.getBoolean("touch_sat_nav_sys")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
              
            </li>
            <%
            }
            if(rs17.next())
            {
            %>
            
            <li>
             <%
             if(rs17.getBoolean("pwr_steer")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           <%
             if(rs17.getBoolean("pwr_win_front")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           <%
             if(rs17.getBoolean("pwr_win_rear")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           <%
             if(rs17.getBoolean("remote_trunk")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           <%
             if(rs17.getBoolean("low_fuel_light")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           <%
             if(rs17.getBoolean("rear_ac_vents")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           <%
             if(rs17.getBoolean("steer_mnt_ctrl")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           
           <%
             if(rs17.getBoolean("cruise_ctrl")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           <%
             if(rs17.getBoolean("park_sensors")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           
           <%
             if(rs17.getBoolean("park_camera")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           
           <%
             if(rs17.getBoolean("gps")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           <%
             if(rs17.getBoolean("keyless_entry")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           <%
             if(rs17.getBoolean("en_start_stop_btn")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           
              <div><%=rs17.getString("drive_modes")%></div>
           
           
           <%
             if(rs17.getBoolean("cooled_glove_box")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           <%
             if(rs17.getBoolean("voice_ctrl")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           <%
             if(rs17.getBoolean("touch_sat_nav_sys")==true)
             {
             %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
               else
                {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
            </li>
            <%
            }
            %>
          </ul>
        </div>
        </div>
        </div>
        
          <!-----------------------------------------Interior Details------------------------------------------> 
           
        <div class="inventory_info_list">
      <div class="listing_heading">
          <div>   <a data-toggle="collapse" data-parent="#accordion" href="#collapse10">Interior Details</a></div>
          <div>&nbsp;</div>
            <div>&nbsp;</div>
          
          
       
      </div>
        <div id="collapse10" class="panel-collapse collapse ">
        <div class="panel-body">
    
          <ul>
            <li class="info_heading">
              <div>AC</div>
              <div>Adjust Steer Height</div>
              <div>Adjust Steer reach</div>
              <div>Tachometer</div>
              <div>Tripmeter</div>
               <div>Leather Seats</div>
              </li>
              
              <%
              if(rs18.next())
              {
              %>
            <li>
                <%
                if(rs18.getBoolean("ac")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs18.getBoolean("adjust_steer_height")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs18.getBoolean("adjust_steer_reach")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs18.getBoolean("tachometer")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs18.getBoolean("tripmeter")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs18.getBoolean("leather_seats")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
              
            </li>
            
            <%
            }
            if(rs19.next())
            {
            %>
            <li>
                
                <%
                if(rs19.getBoolean("ac")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs19.getBoolean("adjust_steer_height")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs19.getBoolean("adjust_steer_reach")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs19.getBoolean("tachometer")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs19.getBoolean("tripmeter")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs19.getBoolean("leather_seats")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
            </li>
            <%
            }
            %>
          </ul>
        </div>
        </div>
        </div>
        
           
           <!------------------------------------------------Exterior Details-------------------------------------------------->
        <div class="inventory_info_list">
      <div class="listing_heading">
          <div>   <a data-toggle="collapse" data-parent="#accordion" href="#collapse11">Exterior Details</a></div>
          <div>&nbsp;</div>
            <div>&nbsp;</div>
          
          
       
      </div>
        <div id="collapse11" class="panel-collapse collapse ">
        <div class="panel-body">
      <ul>
            <li class="info_heading">
              <div>Electric Orvm</div>
              <div>Rain Wipers</div>
              <div>Rear Wipers</div>
              <div>Alloy Wheels</div>
              <div>Sun Proof</div>
               <div>Smoke Lamps</div>
              <div>Roof Rail</div>
              </li>
            
              <%
              if(rs20.next())
              {
              %>
              
              <li>
                
                <%
                if(rs20.getBoolean("electric_orvm")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
                <%
                if(rs20.getBoolean("rain_wipers")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
                <%
                if(rs20.getBoolean("rear_wipers")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           
                <%
                if(rs20.getBoolean("alloy_wheels")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
                <%
                if(rs20.getBoolean("sun_roof")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
                <%
                if(rs20.getBoolean("smoke_lamps")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
                <%
                if(rs20.getBoolean("roof_rail")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
            </li>
            <%
            }
            if(rs21.next())
            {
            %>
            <li>
           
                <%
                if(rs21.getBoolean("electric_orvm")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
                <%
                if(rs21.getBoolean("rain_wipers")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
                <%
                if(rs21.getBoolean("rear_wipers")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
           
                <%
                if(rs21.getBoolean("alloy_wheels")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
                <%
                if(rs21.getBoolean("sun_roof")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
                <%
                if(rs21.getBoolean("smoke_lamps")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>
           
                <%
                if(rs21.getBoolean("roof_rail")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
               }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
               }
           %>   
            </li>
            <%
            }
            %>
          </ul>
        </div>
        </div>
          </div>
            
            
            <!-----------------------Entertain Details----------------------------------------------------------->
            
        <div class="inventory_info_list">
      <div class="listing_heading">
          <div>   <a data-toggle="collapse" data-parent="#accordion" href="#collapse12">Entertain Details</a></div>
          <div>&nbsp;</div>
            <div>&nbsp;</div>
          
          
       
      </div>
        <div id="collapse12" class="panel-collapse collapse ">
        <div class="panel-body">
      <ul>
            <li class="info_heading">
              <div>CD player</div>
              <div>Radio</div>
              <div>tdin audio</div>
              <div>bluetooth</div>
              <div>USB aux</div>
               <div>Touch screen</div>
              </li>
            <%
            
            if(rs22.next())
            {
            
            %>
              
              <li>
                <%
                if(rs22.getBoolean("cd_player")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs22.getBoolean("radio")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                   <%
                if(rs22.getBoolean("tdin_audio")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs22.getBoolean("bluetooth")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs22.getBoolean("usb_aux")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs22.getBoolean("touch_screen")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           </li>
           <%
           }
           if(rs23.next())
           {
           %>
           
            <li>
            <%
                if(rs23.getBoolean("cd_player")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs23.getBoolean("radio")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                   <%
                if(rs23.getBoolean("tdin_audio")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs23.getBoolean("bluetooth")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs23.getBoolean("usb_aux")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs23.getBoolean("touch_screen")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>   
            </li>
            <%
            }
            %>
          </ul>
        </div>
        </div>
        </div>
          
            
            <!------------------------------Dimension details------------------------------>
        
        <div class="inventory_info_list">
      <div class="listing_heading">
          <div>   <a data-toggle="collapse" data-parent="#accordion" href="#collapse13">Dimension Details</a></div>
          <div>&nbsp;</div>
            <div>&nbsp;</div>
          
          
       
      </div>
        <div id="collapse13" class="panel-collapse collapse ">
        <div class="panel-body">
      <ul>
            <li class="info_heading">
              <div>Length</div>
              <div>Width</div>
              <div>Hieght</div>
              <div>Grnd Clearence</div>
              <div>Wheel Base</div>
              <div>Kerb Weight</div>
              </li>
              
              <%
              if(rs24.next())
              {
              %>
            <li>
              <div><%=rs24.getInt("length")%></div>
              <div><%=rs24.getInt("width")%></div>
              <div><%=rs24.getInt("height")%></div>
              <div><%=rs24.getInt("grnd_clearance")%></div>
              <div><%=rs24.getInt("wheel_base")%></div>
              <div><%=rs24.getInt("kerb_weight")%></div>
              
            </li>
            <%
            }
            if(rs25.next())
            {
            %>
            <li>
             
              <div><%=rs25.getInt("length")%></div>
              <div><%=rs25.getInt("width")%></div>
              <div><%=rs25.getInt("height")%></div>
              <div><%=rs25.getInt("grnd_clearance")%></div>
              <div><%=rs25.getInt("wheel_base")%></div>
              <div><%=rs25.getInt("kerb_weight")%></div>    
            </li>
            <%
            }
            %>
          </ul>
        </div>
        </div>
        </div>
            
            <!---------------------------------------Safety Features-------------------------------------------->
        <div class="inventory_info_list">
      <div class="listing_heading">
          <div>   <a data-toggle="collapse" data-parent="#accordion" href="#collapse14">Safety Features</a></div>
          <div>&nbsp;</div>
            <div>&nbsp;</div>
          
          
       
      </div>
        <div id="collapse14" class="panel-collapse collapse ">
        <div class="panel-body">
      <ul>
            <li class="info_heading">
              <div>Anti Lock Break </div>
              <div>Driver Air Bag</div>
              <div>Passenger Air Bag</div>
              <div>Side Front Air Bag</div>
              <div>Side Rear Air Bag</div>
               <div>Traction control</div>
              <div>Hill Assist</div>
              <div>Engine Immobile</div>
               <div>EBD</div>
              </li>
            
              <%
              if(rs26.next())
              {
              %>
              <li>
                
                
                <%
                if(rs26.getBoolean("anti_lock_break")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs26.getBoolean("drvr_airbag")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs26.getBoolean("passenger_airbag")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs26.getBoolean("side_front_airbag")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs26.getBoolean("side_rear_airbag")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs26.getBoolean("traction_ctrl")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs26.getBoolean("hill_assist")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs26.getBoolean("engine_immobile")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs26.getBoolean("EBD")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
            </li>
            <%
            }
            if(rs27.next())
            {
            %>
            <li>
           
                <%
                if(rs27.getBoolean("anti_lock_break")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs27.getBoolean("drvr_airbag")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs27.getBoolean("passenger_airbag")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs27.getBoolean("side_front_airbag")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs27.getBoolean("side_rear_airbag")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs27.getBoolean("traction_ctrl")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs27.getBoolean("hill_assist")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs27.getBoolean("engine_immobile")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
           
                <%
                if(rs27.getBoolean("EBD")==true)
                {
                %>
           <div><i class="fa fa-check" aria-hidden="true"></i></div>
           <%
           }
           else
            {
           %>
           <div><i class="fa fa-close" aria-hidden="true"></i></div>
           <%
           }
           %>
              
            </li>
            
            <%
                }
            }
             catch(Exception e)
            {
                e.printStackTrace();
            }
            finally
            {
                try
                {
                    con.close();
                }
                catch(Exception e)
                {
                    e.printStackTrace();
                }
            }
           
            %>
            
          </ul>
        </div>
        </div>
        </div>
      </div>
    </div>
    </div>
        
        
        
        
        
      </div>
    

</section>
<!--/Compare--> 

<!--Brands-->
<section class="brand-section gray-bg">
  <div class="container">
    <div class="brand-hadding">
      <h5>Popular Brands</h5>
    </div>
    <div class="brand-logo-list">
      <div id="popular_brands">
        <div><a href="#"><img src="assets/images/brand-logo-1.png" class="img-responsive" alt="image"></a></div>
        <div><a href="#"><img src="assets/images/brand-logo-2.png" class="img-responsive" alt="image"></a></div>
        <div><a href="#"><img src="assets/images/brand-logo-3.png" class="img-responsive" alt="image"></a></div>
        <div><a href="#"><img src="assets/images/brand-logo-4.png" class="img-responsive" alt="image"></a></div>
        <div><a href="#"><img src="assets/images/brand-logo-5.png" class="img-responsive" alt="image"></a></div>
      </div>
    </div>
  </div>
</section>
<!-- /Brands--> 


<!--Footer -->
<footer>
  <div class="footer-top">
    <div class="container">
      <div class="row">
        <div class="col-md-3 col-sm-6">
          <h6>Top Categores</h6>
          <ul>
            <li><a href="#">Crossovers</a></li>
            <li><a href="#">Hybrids</a></li>
            <li><a href="#">Hybrid Cars</a></li>
            <li><a href="#">Hybrid SUVs</a></li>
            <li><a href="#">Concept Vehicles</a></li>
          </ul>
        </div>
        <div class="col-md-3 col-sm-6">
          <h6>About Us</h6>
          <ul>
            <li><a href="#">Privacy</a></li>
            <li><a href="#">Hybrid Cars</a></li>
            <li><a href="#">Cookies</a></li>
            <li><a href="#">Trademarks</a></li>
            <li><a href="#">Terms of use</a></li>
          </ul>
        </div>
        <div class="col-md-3 col-sm-6">
          <h6>Useful Links</h6>
          <ul>
            <li><a href="#">Our Partners</a></li>
            <li><a href="#">Careers</a></li>
            <li><a href="#">Sitemap</a></li>
            <li><a href="#">Investors</a></li>
            <li><a href="#">Request a Quote</a></li>
          </ul>
        </div>
        <div class="col-md-3 col-sm-6">
          <h6>Subscribe Newsletter</h6>
          <div class="newsletter-form">
            <form action="#">
              <div class="form-group">
                <input type="email" class="form-control newsletter-input" required placeholder="Enter Email Address" />
              </div>
              <button type="submit" class="btn btn-block">Subscribe <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></button>
            </form>
            <p class="subscribed-text">*We send great deals and latest auto news to our subscribed users very week.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="footer-bottom">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-md-push-6 text-right">
          <div class="footer_widget">
            <p>Download Our APP:</p>
            <ul>
              <li><a href="#"><i class="fa fa-android" aria-hidden="true"></i></a></li>
              <li><a href="#"><i class="fa fa-apple" aria-hidden="true"></i></a></li>
            </ul>
          </div>
          <div class="footer_widget">
            <p>Connect with Us:</p>
            <ul>
              <li><a href="#"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
              <li><a href="#"><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>
              <li><a href="#"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a></li>
              <li><a href="#"><i class="fa fa-google-plus-square" aria-hidden="true"></i></a></li>
              <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-6 col-md-pull-6">
          <p class="copy-right">Copyright &copy; 2017 CarForYou. All Rights Reserved</p>
        </div>
      </div>
    </div>
  </div>
</footer>
<!-- /Footer--> 

<!--Back to top-->
<div id="back-top" class="back-top"> <a href="#top"><i class="fa fa-angle-up" aria-hidden="true"></i> </a> </div>
<!--/Back to top--> 

<!--Login-Form -->
<div class="modal fade" id="loginform">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h3 class="modal-title">Login</h3>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="login_wrap">
            <div class="col-md-6 col-sm-6">
              <form action="#" method="get">
                <div class="form-group">
                  <input type="text" class="form-control" placeholder="Username or Email address*">
                </div>
                <div class="form-group">
                  <input type="password" class="form-control" placeholder="Password*">
                </div>
                <div class="form-group checkbox">
                  <input type="checkbox" id="remember">
                  <label for="remember">Remember Me</label>
                </div>
                <div class="form-group">
                  <input type="submit" value="Login" class="btn btn-block">
                </div>
              </form>
            </div>
            <div class="col-md-6 col-sm-6">
              <h6 class="gray_text">Login the Quick Way</h6>
              <a href="#" class="btn btn-block facebook-btn"><i class="fa fa-facebook-square" aria-hidden="true"></i> Login with Facebook</a> <a href="#" class="btn btn-block twitter-btn"><i class="fa fa-twitter-square" aria-hidden="true"></i> Login with Twitter</a> <a href="#" class="btn btn-block googleplus-btn"><i class="fa fa-google-plus-square" aria-hidden="true"></i> Login with Google+</a> </div>
            <div class="mid_divider"></div>
          </div>
        </div>
      </div>
      <div class="modal-footer text-center">
        <p>Don't have an account? <a href="#signupform" data-toggle="modal" data-dismiss="modal">Signup Here</a></p>
        <p><a href="#forgotpassword" data-toggle="modal" data-dismiss="modal">Forgot Password ?</a></p>
      </div>
    </div>
  </div>
</div>
<!--/Login-Form --> 

<!--Register-Form -->
<div class="modal fade" id="signupform">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h3 class="modal-title">Sign Up</h3>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="signup_wrap">
            <div class="col-md-6 col-sm-6">
              <form action="#" method="get">
                <div class="form-group">
                  <input type="text" class="form-control" placeholder="Full Name">
                </div>
                <div class="form-group">
                  <input type="email" class="form-control" placeholder="Email Address">
                </div>
                <div class="form-group">
                  <input type="password" class="form-control" placeholder="Password">
                </div>
                <div class="form-group">
                  <input type="password" class="form-control" placeholder="Confirm Password">
                </div>
                <div class="form-group checkbox">
                  <input type="checkbox" id="terms_agree">
                  <label for="terms_agree">I Agree with <a href="#">Terms and Conditions</a></label>
                </div>
                <div class="form-group">
                  <input type="submit" value="Sign Up" class="btn btn-block">
                </div>
              </form>
            </div>
            <div class="col-md-6 col-sm-6">
              <h6 class="gray_text">Login the Quick Way</h6>
              <a href="#" class="btn btn-block facebook-btn"><i class="fa fa-facebook-square" aria-hidden="true"></i> Login with Facebook</a> <a href="#" class="btn btn-block twitter-btn"><i class="fa fa-twitter-square" aria-hidden="true"></i> Login with Twitter</a> <a href="#" class="btn btn-block googleplus-btn"><i class="fa fa-google-plus-square" aria-hidden="true"></i> Login with Google+</a> </div>
            <div class="mid_divider"></div>
          </div>
        </div>
      </div>
      <div class="modal-footer text-center">
        <p>Already got an account? <a href="#loginform" data-toggle="modal" data-dismiss="modal">Login Here</a></p>
      </div>
    </div>
  </div>
</div>
<!--/Register-Form --> 

<!--Forgot-password-Form -->
<div class="modal fade" id="forgotpassword">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">

        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h3 class="modal-title">Password Recovery</h3>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="forgotpassword_wrap">
            <div class="col-md-12">
              <form action="#" method="get">
                <div class="form-group">
                  <input type="email" class="form-control" placeholder="Your Email address*">
                </div>
                <div class="form-group">
                  <input type="submit" value="Reset My Password" class="btn btn-block">
                </div>
              </form>
              <div class="text-center">
                <p class="gray_text">For security reasons we don't store your password. Your password will be reset and a new one will be send.</p>
                <p><a href="#loginform" data-toggle="modal" data-dismiss="modal"><i class="fa fa-angle-double-left" aria-hidden="true"></i> Back to Login</a></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!--/Forgot-password-Form --> 

<!-- Scripts --> 
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script> 
<script src="assets/js/interface.js"></script> 
<!--Switcher-->
<script src="assets/switcher/js/switcher.js"></script>
<!--bootstrap-slider-JS--> 
<script src="assets/js/bootstrap-slider.min.js"></script> 
<!--Slider-JS--> 
<script src="assets/js/slick.min.js"></script> 
<script src="assets/js/owl.carousel.min.js"></script>

</body>

<!-- Mirrored from themes.webmasterdriver.net/carforyou/demo/compare.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 16 Mar 2018 17:19:34 GMT -->
</html>