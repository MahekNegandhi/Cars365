<%@page import="DAO.UserCheck"%>
<jsp:useBean id="user" class="DTO.User" scope="request"></jsp:useBean>
<jsp:setProperty name="user" property="*"></jsp:setProperty>
<%

 if(UserCheck.CheckUser(user))
 {
     %>
     <script>
         alert("Please verify your email and login again ");
         window.location.href="homepage.jsp";
         </script>
     
     <%
 }
else
{
response.sendRedirect("error.jsp");
}

%>


