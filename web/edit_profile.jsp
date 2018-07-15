<%@page import="DAO.UserCheck" %>
<jsp:useBean id="user" class="DTO.User" scope="request"></jsp:useBean>
<jsp:setProperty name="user" property="*"></jsp:setProperty>
  <%
    if(UserCheck.SetProfile(user)){
 %>
 <script>alert('Profile Updated Successfullyy...!!!');
 window.location.href="homepage.jsp";</script>
        <%     
           }
      else{
       %>
       <script>alert('Something went wrong...!!!');</script>
<%}%>