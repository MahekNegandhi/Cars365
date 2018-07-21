<%@page import="DAO.Users_MasterDAO"%>
<%@page import="Model.Users_Master"%>
<jsp:useBean id="user" class="Model.Users_Master" scope="request"></jsp:useBean>
<jsp:setProperty name="user" property="*"></jsp:setProperty>

<%

if(Users_MasterDAO.edit_profile(user))
{
    %>
    <script>
        alert("profile updated");
        window.location.href="profile-settings.jsp";
        </script>
    
    
    <%
}

%>