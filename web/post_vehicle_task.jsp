<%@page import="DAO.UserCheck"%>
<jsp:useBean id="user" class="DTO.Postcar" scope="request"></jsp:useBean>
<jsp:setProperty name="user" property="*"></jsp:setProperty>
<%

  if(UserCheck.PostCar(user)){
      %>
      <script>alert('Car Added Succesfullyyy..!!!')</script>
  <%}else{%>
    <script>alert('Some Error Occured.!!!')</script>
    <%}%>