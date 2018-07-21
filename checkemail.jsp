<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Connection.GetConnection"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con=null;
try
{
 con=GetConnection.getConnection();
 String user_email=request.getParameter("user_email");
 String sql="select user_email from users_master where user_email=?";
 PreparedStatement ps=con.prepareStatement(sql);
 ps.setString(1, user_email);
 ResultSet rs=ps.executeQuery();
 String data="";
 if(rs.next())
 {
     data=data+" email id already exists";
 }
    out.print(data);
    
    
}   
catch(Exception e)
{
    e.printStackTrace();
}
finally
{
    try
    {
        con.close();
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
}

    %>