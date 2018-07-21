<%@page import="DAO.Users_MasterDAO"%>
<%
int user_id=(Integer)session.getAttribute("user_id");
int ad_id=(Integer)(request.getAttribute("ad_id"));
int seller_user_id=(Integer)request.getAttribute("user_id");
if(Users_MasterDAO.addInterestedUser(user_id,ad_id))
{
    System.out.println("user added");
    
}
else
{
    System.out.println("user already exists");
    
}

RequestDispatcher rd=request.getRequestDispatcher("dealers-profile.jsp");
request.setAttribute("user_id", seller_user_id);
rd.forward(request, response);



%>