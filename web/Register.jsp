        <html><head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    </head>
   
<%
if(session.getAttribute("uname")==null)
{
%>

<body>
<div class="login_btn"> <a href="#loginform" class="btn btn-default" data-toggle="modal" data-dismiss="modal"><b>Login / Register</b></a> </div>
  
    <!--/Login-Form --> 
<div class="modal fade" id="loginform">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" style="float: right" aria-label="Close"><span style="text-align: center" aria-hidden="true">&times;</span></button>
        <h2 style="text-align:center" class="modal-title"> <i class="fa fa-sign-in"> <b> Login </b> </i></h2>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="login_wrap">
            <div class="col-md-6 col-sm-6">
                <form action="login_task.jsp" method="get" autocomplete="off">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Username" name="uname" autocomplete="off" required/>
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Password" name="password" required/>
                </div>
                <div class="form-group checkbox">
                    <input type="checkbox" id="remember"/><label for="remember">Remember Me</label>
                </div>
                <div class="form-group">
                  <input type="submit" value="Login" class="btn btn-block">
                </div>
              </form>
            </div>
            <div class="col-md-6 col-sm-6">
              <h3 class="gray_text" style="height: auto">Login the Quick Way</h3>
              <a href="#" class="btn btn-block facebook-btn btn-loginsign"><i class="fa fa-facebook-square" aria-hidden="true"></i> Login with Facebook</a> 
              <a href="#" class="btn btn-block twitter-btn"><i class="fa fa-twitter-square" aria-hidden="true"></i> Login with Twitter</a>
              <a href="#" class="btn btn-block googleplus-btn"><i class="fa fa-google-plus-square" aria-hidden="true"></i> Login with Google+</a> </div>
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
          <button type="button" class="close" data-dismiss="modal" style="float: right">&times;</button>
      <!--  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true" style="text-align: center">&times;</span></button>-->
      <h2 class="modal-title"style="text-align: center"><i class="fa fa-sign-in"><b> Sign Up </b></i></h2>    
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="signup_wrap">
            <div class="col-md-6 col-sm-6">
                <form name="varform" action="signup_task.jsp" method="post" autocomplete="off">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="User Name" name="uname" id="user_name" required/>
                           <span id="lid"></span>
                </div>
                <div class="form-group">
                    <input type="text"  class="form-control" placeholder="Email Address"  name="email" id="email" onkeyup="check_useremail()" required>
                    <span id="lid1"></span>
                    
                </div>
                  
                  <div class="form-group">
                      <input type="text" class="form-control" placeholder="Contact" name="contact" maxlength="10" required>
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Password" name="password" required>
                </div>
              
                <div class="form-group checkbox">
                    <input type="checkbox" id="terms_agree" required/>
                  <label for="terms_agree">I Agree with <a href="#">Terms and Conditions</a></label>
                </div>
                <div class="form-group">
                  <input type="submit" value="Sign Up" class="btn btn-block">
                </div>
              </form>
            </div>
            <div class="col-md-6 col-sm-6">
              <h3 class="gray_text">Login the Quick Way</h3>
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
<%
}
%>
</body>
 </html>