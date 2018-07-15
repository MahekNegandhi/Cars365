<!---------  Check email -------------------------->
<script>
 function check_useremail()
            {
               var request=new XMLHttpRequest();
                
               
                var val=document.getElementById("email").value;
                var url="emailCheck.jsp?email="+val;
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
            
   //---------------------------display model-------------------------------------------
   function display_model(brand)
    {
      var request=new XMLHttpRequest();
      request.open("GET","fetch_model.jsp?brand="+brand,true);
      request.send();
       request.onreadystatechange=function()
      {
           if(request.readyState==4)
                    {
                        document.getElementById("model").innerHTML=request.responseText;
                    }
      }
       
       
   }
            
   //---------------------------------display variant----------------------         
  function display_variant(model)
    {
      var request=new XMLHttpRequest();
      request.open("GET","fetch_variant.jsp?model="+model,true);
      request.send();
       request.onreadystatechange=function()
      {
           if(request.readyState==4)
                    {
                        document.getElementById("variant").innerHTML=request.responseText;
                    }
      }
       
       
   }           
</script>

