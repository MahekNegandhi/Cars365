<%@page import="DAO.Users_MasterDAO"%>
<jsp:useBean id="user" class="Model.Users_Master" scope="request"></jsp:useBean>
<jsp:setProperty name="user" property="*"></jsp:setProperty>
<%

 if(Users_MasterDAO.add_user(user))
 {
     %>
     <script>
         alert("please verify your email and login again ");
         window.location.href="home.jsp";
         </script>
     
     <%
 }
else
{
response.sendRedirect("error.jsp");
}

%>


