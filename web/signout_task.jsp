<jsp:useBean id="user" class="DTO.User" scope="request"></jsp:useBean>
<jsp:setProperty name="user" property="*"></jsp:setProperty>
<%
     if(session.isNew())
     {
%>
         alert('You need to login first!!');
         <jsp:include page="homepage.jsp"></jsp:include>
<%
     }    
     else
    {   session.setAttribute("uname",null);
        session.invalidate();
   %>
   <script>
       alert('Logged out successfully!!');
   </script>
   <jsp:include page="homepage.jsp"></jsp:include>
<%  
    }
%>
  

