<%@page import="Connection.Connect" %>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    Connection con = null;
    try{
        con = Connect.getConnect();
       
        
        PreparedStatement pst = con.prepareStatement("select *  from model_db where brand_id = ? ");
        int brand_id = Integer.parseInt(request.getParameter("brand"));
        pst.setInt(1, brand_id);
        ResultSet rs = pst.executeQuery();
         String data = "";
       data = data +"<option>Select Model</option>";
        out.print(data);
        while(rs.next())
        {
%>
     data = data + "<option value='"+rs.getString("model_id")+"'><%=rs.getString("model_name")%></option>";
<%
        }
      
    }catch(Exception e)
    {
        e.printStackTrace();
    }
    finally{
    try {
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>