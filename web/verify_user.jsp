<%@page import="DAO.UserCheck"%>

<%
    String email = request.getParameter("email");
if(UserCheck.verify(email))
{
    response.sendRedirect("homepage.jsp");
  }
  else
  {
      response.sendRedirect("error.jsp");
  }

%>
