<%@page import="DAO.admin_masterDAO"%>
<jsp:useBean id="admin" class="Model.admin_master" scope="request"></jsp:useBean>
<jsp:setProperty name="admin" property="*"></jsp:setProperty>

<%
if(admin_masterDAO.check_admin(admin))
{
    session.setAttribute("admin", request.getParameter("username"));
     %>
     <script>
         alert("successful");
         window.location.href="add_details.jsp";
         </script>
     
     
     <%
    
}



%>