<%@page import="Connection.GetConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
Connection con=null;
   try
{
   Class.forName("com.mysql.jdbc.Driver");
    con=GetConnection.getConnection();
   
     String bid=(request.getParameter("bid"));
    String sql = "select * from models_master where brand_id = ?";
      PreparedStatement ps = con.prepareStatement(sql);
      ps.setString(1, bid);
      ResultSet rs = ps.executeQuery();
      String data = "";
       data = data +"<option>Select Model</option>";
      
      while(rs.next())
      {
         data = data +"<option value='"+rs.getString("model_id")+"'>"+rs.getString("model_name")+"</option>";
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