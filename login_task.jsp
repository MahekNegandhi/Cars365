<%@page import="DAO.Users_MasterDAO"%>
<jsp:useBean id="user" class="Model.Users_Master" scope="request"></jsp:useBean>
<jsp:setProperty name="user" property="*"></jsp:setProperty>
<%
 if(Users_MasterDAO.checkUser(user))
 {
     session.setAttribute("user_name", request.getParameter("user_name"));
     
     int user_id=Users_MasterDAO.getUserId(session.getAttribute("user_name").toString());
     session.setAttribute("user_id", user_id);
     
     
     response.sendRedirect("home.jsp");
 }
else
 {
     %>
     <script>
         alert("invalid username or password please try again");
         window.location.href="home.jsp";
         </script>
     
     
     <%
         
     
 }

%>
