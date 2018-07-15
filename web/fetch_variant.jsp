<%@page import="Connection.Connect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
Connection con=null;
   try
{
   Class.forName("com.mysql.jdbc.Driver");
    con=Connect.getConnect();
   
     String mid=(request.getParameter("model"));
    String sql = "select * from variant_db where model_id = ?";
      PreparedStatement ps = con.prepareStatement(sql);
      ps.setString(1, mid);
      ResultSet rs = ps.executeQuery();
      String data = "";
      data = data +"<option>Select Variant</option>";
      out.print(data);
      while(rs.next())
      {
          %>
          data = data +"<option value='"+rs.getString("variant_id")+"'><%=rs.getString("variant_name")%></option>";
     <% }
    
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