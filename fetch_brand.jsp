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
                    String sql="select * from brand_master";
                    PreparedStatement ps=con.prepareStatement(sql);
                    ResultSet rs=ps.executeQuery();
                    while(rs.next())
                    {
                        %>
                        <option value="<%=rs.getString("brand_id")%>"><%=rs.getString("brand_name")%></option>
                        <%
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