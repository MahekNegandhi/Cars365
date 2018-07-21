<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Connection.GetConnection"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con=null;
try
{
 con=GetConnection.getConnection();
 String user_name=request.getParameter("user_name");
 String sql="select user_name from users_master where user_name=?";
 PreparedStatement ps=con.prepareStatement(sql);
 ps.setString(1, user_name);
 ResultSet rs=ps.executeQuery();
 String data="";
 if(rs.next())
 {
     data=data+"user name already exists";
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