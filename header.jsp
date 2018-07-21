<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       </head>
    <body>
       <nav id="navigation_bar" class="navbar navbar-default">
    <div class="container">
      <div class="navbar-header">
        <button id="menu_slide" data-target="#navigation" aria-expanded="false" data-toggle="collapse" class="navbar-toggle collapsed" type="button"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      </div>
      <div class="header_wrap">
          
         <%
         Object user=session.getAttribute("user_name");
         if(user!=null)
         {
             String user_name=user.toString();
         %> 
        <div class="user_login">
          <ul>
            <li class="dropdown"> <a href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user-circle" aria-hidden="true"></i> <%=user_name%> <i class="fa fa-angle-down" aria-hidden="true"></i></a>
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
          
        <div class="header_search">
          <div id="search_toggle"><i class="fa fa-search" aria-hidden="true"></i></div>
          <form action="#" method="get" id="header-search-form">
            <input type="text" placeholder="Search..." class="form-control">
            <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
          </form>
        </div>
      </div>
      <div class="collapse navbar-collapse" id="navigation">
        <ul class="nav navbar-nav">
          <li class="dropdown"><a href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">NEW</a>
          	 <ul class="dropdown-menu">
              <li><a href="new-search.jsp">Search</a></li> 
                            <li><a href="new-search.jsp">On Road </a></li>
              <li><a href="compare.jsp">Compare</a></li>
            </ul>
          </li>
          
          
          <li class="dropdown"><a href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Used</a>
            <ul class="dropdown-menu">
              <li><a href="used-search.jsp">Search</a></li>
              <li><a href="post-vehicle.jsp">Sell Used</a></li>
               </ul>
          </li>
          
          <li class="dropdown"><a href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">News</a>
            <ul class="dropdown-menu">
              <li><a href="car-news.jsp">Car News</a></li>
              <li><a href="reviews.jsp">User/Expert Review</a></li>
              <li><a href="car-vedios.jsp">Car Vedios</a></li>
              <li><a href="reviews.jsp">Write Review</a></li>
            </ul>
          </li>
          <li class="dropdown"><a href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">More</a>
            <ul class="dropdown-menu">
              <li><a href="blog-left-sidebar.html">Car Loan</a></li>
              <li><a href="faq.jsp">Ask Question</a></li>
            </ul>
          </li>
          
          <li><a href="about-us.jsp">About Us</a></li>
          
        </ul>
      </div>
    </div>
  </nav>
  </body>
</html>
