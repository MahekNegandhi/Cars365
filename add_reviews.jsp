<%@page import="DAO.Users_MasterDAO"%>
<jsp:useBean id="review" class="Model.Review_master" scope="request"></jsp:useBean>
<jsp:setProperty name="review" property="*"></jsp:setProperty>

<%
if(Users_MasterDAO.add_review(review))
{
    %>
    <jsp:include page="reviews.jsp"></jsp:include>
    <%
}

%>
