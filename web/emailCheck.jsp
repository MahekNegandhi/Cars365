<%@page import="java.sql.*"%>
<%@page import="Connection.Connect" %>


<%
       Connection con=null;
       try{
       String idd=request.getParameter("email");
        con = Connect.getConnect();
        String sql="select email from user_db where email = ?";
       PreparedStatement pst = con.prepareStatement(sql);
       pst.setString(1,idd);
        ResultSet rs = pst.executeQuery();
        if(rs.next())
        {%>
        <span style="color:red">User is Already Taken</span>   
        <%}else{
       %>
       <span style="color:green">user is available</span>   
       <%}
    }
       catch(Exception e)
    {
        e.printStackTrace();
    }
    finally
    {
        try {
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
}
%>
    