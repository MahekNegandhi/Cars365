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
        
        PreparedStatement pst = con.prepareStatement("select *  from brand_db ");
        ResultSet rs = pst.executeQuery();
        while(rs.next())
        {
%>
    <option value="<%=rs.getString("brand_id")%>"><%=rs.getString("brand_name")%></option>
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
