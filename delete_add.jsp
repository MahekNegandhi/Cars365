<%@page import="DAO.Users_MasterDAO"%>
<%
int ad_id=Integer.parseInt(request.getParameter("ad_id"));
if(Users_MasterDAO.delete_add(ad_id))
{
    %>
    <script>
        alert("add deleted");
        window.location.href="my-vehicles.jsp";
        </script>
    
    <%
}


%>