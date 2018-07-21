<%@page import="DAO.Users_MasterDAO"%>
<%
    String email=request.getParameter("user_email");
  if(Users_MasterDAO.verify_user(email))
  {
      session.setAttribute("user_email", email);
      response.sendRedirect("home.jsp");
  }
  else
  {
      response.sendRedirect("error.jsp");
  }

%>