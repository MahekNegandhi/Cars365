<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Connection.GetConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link href="Box/css.css" rel="stylesheet" type="text/css"/>

    </head>
    <link href="Box/css.css" rel="stylesheet" type="text/css"/>
    <body>
        <section class="mainbox titleborder" id="dieselmodelswrap"><h2>Maruti Ertiga price list (Variants)</h2><span class="holder">&nbsp;</span>


            <table class="grid variantcont">
                <thead><tr>     
                        <th class="width207">Variant</th>
                        <th class="width140">Ex-Showroom Price</th>
                    </tr></thead>
                <tbody class="scrollbar scrollvert"> 
                    
                    
                    
                    <%
                    String car_brand=request.getParameter("car_brand");
                    String car_model=request.getParameter("car_model");
                    
                    Connection con=null;
                    try
                    {
                        con=GetConnection.getConnection();
                        String sql="select variant_id from variants_master where model_id=?";
                        PreparedStatement ps=con.prepareStatement(sql);
                        ps.setString(1,car_model);
                        ResultSet rs=ps.executeQuery();
                        while(rs.next())
                        {
                            
                           String variant_id=rs.getString("variant_id");
                           sql="SELECT  variants_master.variant_name,variants_master.variant_price,enginedetails_master.engine_displacement,transdetails_master.trans_type,fueldetails_master.fuel_type FROM variants_master  INNER JOIN enginedetails_master ON variants_master.variant_id = enginedetails_master.variant_id  INNER JOIN transdetails_master  ON variants_master.variant_id = transdetails_master.variant_id  INNER JOIN fueldetails_master  ON variants_master.variant_id = fueldetails_master.variant_id  WHERE variants_master.variant_id =?";
                           ps=con.prepareStatement(sql);
                           ps.setString(1, variant_id);
                           ResultSet rs1=ps.executeQuery();
                           if(rs1.next())
                           {
                    
                    
                    
                    %>
                    
                    

                    <tr>
                        <td class="dkmpl"> <a class="crdtext" href="https://www.cardekho.com/overview/Maruti_Ertiga/Maruti_Ertiga_SHVS_LDI.htm" title="SHVS LDI Details"><%=rs1.getString("variant_name")%></a><br>
                            <%=rs1.getInt("engine_displacement")%> cc,&nbsp; <span><%=rs1.getString("trans_type")%>, <%=rs1.getString("fuel_type")%>,</span> 24.52&nbsp;kmpl
                                


                        </td>
                        <td class="dprice"><span class="icon-cd_R">Rs </span>

                            <%=rs1.getString("variant_price")%><sup>*</sup>  
                        </td>        
                        
                    </tr>
                    <%
                    }
                  }
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
                  
                </tbody>
            </table>

    </body>
</html>
