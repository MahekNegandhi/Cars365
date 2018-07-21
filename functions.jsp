<link class="jsbin" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>
<script>
        function readURL1(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#img1')
                    .attr('src', e.target.result)
                    .width(148)
                    .height(93);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
        
        function readURL2(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#img2')
                    .attr('src', e.target.result)
                    .width(148)
                    .height(93);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
    
     function readURL3(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#img3')
                    .attr('src', e.target.result)
                    .width(148)
                    .height(93);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
    
    function display_model(brand)
            {
                var xhttp = new XMLHttpRequest();
                xhttp.open("GET","fetch_model.jsp?bid="+brand,true);
                xhttp.send();
                xhttp.onreadystatechange = function(){
                   if(xhttp.status == 200 && xhttp.readyState ==4)
                   {
                       document.getElementById("model").innerHTML = xhttp.responseText;
                       
                   }
                }
            }

            
    function display_variant(model)
            {
                var xhttp = new XMLHttpRequest();
                xhttp.open("GET","fetch_variant.jsp?mid="+model,true);
                xhttp.send();
                xhttp.onreadystatechange = function(){
                   if(xhttp.status == 200 && xhttp.readyState ==4)
                   {
                       document.getElementById("variant").innerHTML = xhttp.responseText;
                       
                   }
                }
            }


            //.................compare car functions........................................
            
            
            function display_model1(brand1)
            {
                var xhttp = new XMLHttpRequest();
                xhttp.open("GET","fetch_model.jsp?bid="+brand1,true);
                xhttp.send();
                xhttp.onreadystatechange = function(){
                   if(xhttp.status == 200 && xhttp.readyState ==4)
                   {
                       document.getElementById("model1").innerHTML = xhttp.responseText;
                       
                   }
                }
            }

            
    function display_variant1(model1)
            {
                var xhttp = new XMLHttpRequest();
                xhttp.open("GET","fetch_variant.jsp?mid="+model1,true);
                xhttp.send();
                xhttp.onreadystatechange = function(){
                   if(xhttp.status == 200 && xhttp.readyState ==4)
                   {
                       document.getElementById("variant1").innerHTML = xhttp.responseText;
                       
                   }
                }
            }


            
            
            function display_model2(brand2)
            {
                var xhttp = new XMLHttpRequest();
                xhttp.open("GET","fetch_model.jsp?bid="+brand2,true);
                xhttp.send();
                xhttp.onreadystatechange = function(){
                   if(xhttp.status == 200 && xhttp.readyState ==4)
                   {
                       document.getElementById("model2").innerHTML = xhttp.responseText;
                       
                   }
                }
            }

            
    function display_variant2(model2)
            {
                var xhttp = new XMLHttpRequest();
                xhttp.open("GET","fetch_variant.jsp?mid="+model2,true);
                xhttp.send();
                xhttp.onreadystatechange = function(){
                   if(xhttp.status == 200 && xhttp.readyState ==4)
                   {
                       document.getElementById("variant2").innerHTML = xhttp.responseText;
                       
                   }
                }
            }
           
    
    
             function display_model3(brand3)
            {
                var xhttp = new XMLHttpRequest();
                xhttp.open("GET","fetch_model.jsp?bid="+brand3,true);
                xhttp.send();
                xhttp.onreadystatechange = function(){
                   if(xhttp.status == 200 && xhttp.readyState ==4)
                   {
                       document.getElementById("model3").innerHTML = xhttp.responseText;
                       
                   }
                }
            }

            
    function display_variant3(model3)
            {
                var xhttp = new XMLHttpRequest();
                xhttp.open("GET","fetch_variant.jsp?mid="+model3,true);
                xhttp.send();
                xhttp.onreadystatechange = function(){
                   if(xhttp.status == 200 && xhttp.readyState ==4)
                   {
                       document.getElementById("variant3").innerHTML = xhttp.responseText;
                       
                   }
                }
            }

    
    
    //..........................user name check...........................................
    
      
            function check_username()
            {
               var request=new XMLHttpRequest();
                
               
                var val=document.getElementById("user_name").value;
                var url="checkuser.jsp?user_name="+val;
                request.open("GET",url,true);
                request.send();
                
                request.onreadystatechange=function ()
                {
                    if(request.readyState==4)
                    {
                        document.getElementById("lid").innerHTML=request.responseText;
                    }
                }
                
                
            }
            
    
    //.........................................user email check...................................
    
             //var request=new XMLHttpRequest();
                
            function check_useremail()
            {
               var request=new XMLHttpRequest();
                
               
                var val=document.getElementById("user_email").value;
                var url="checkemail.jsp?user_email="+val;
                request.open("GET",url,true);
                request.send();
                
                request.onreadystatechange=function ()
                {
                    if(request.readyState==4)
                    {
                        document.getElementById("lid1").innerHTML=request.responseText;
                    }
                }
                
                
            }
            
    
      
</script>