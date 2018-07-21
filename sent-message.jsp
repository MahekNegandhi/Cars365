<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Connection.GetConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>
<%
   int user_id =Integer.parseInt(request.getParameter("user_id"));
   String car_brand=request.getParameter("car_brand1");
   String car_model=request.getParameter("car_model1");
   String car_variant=request.getParameter("car_variant1");
   int ad_id=Integer.parseInt(request.getParameter("ad_id"));
   int buyer_user_id=(Integer)(session.getAttribute("user_id"));
   String mobile="";
   String user_name="";
   String buyer_mobile="";
   String buyer_name="";
           Connection con=null;
          try
          {
              //.......................to get seller details..................................
              System.out.println("Entered sent-message.jsp");
              
              Class.forName("com.mysql.jdbc.Driver");
                    con=GetConnection.getConnection();
                String sql="select * from users_master where user_id=?";
                
                PreparedStatement ps=con.prepareStatement(sql);
                ps.setInt(1, user_id);
                
                ResultSet rs=ps.executeQuery();
                if(rs.next())
                {
                     mobile=rs.getString("primary_contact");
                     user_name=rs.getString("user_name");
                }  
                
                
                //........................to get buyer contact detail............................................
                
                 sql="select * from users_master where user_id=?";
                 PreparedStatement ps1=con.prepareStatement(sql);
                 ps1.setInt(1,buyer_user_id);
                  ResultSet rs1=ps1.executeQuery();
                  if(rs1.next())
                  {
                      buyer_mobile=rs1.getString("primary_contact");
                      buyer_name=rs1.getString("user_name");
                  }
                  
                 
                 
                
                //.................................sending message to buyer.....................................
                
                
    String message=URLEncoder.encode("this is from carlo seller is "+user_name+" "+mobile+" "+car_brand+" "+car_model+" "+car_variant,"utf-8");
    
    try
    {
        String senderID=URLEncoder.encode("TEST SMS","utf-8");
        
        URL u = new URL("http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=saklechaaman4@gmail.com:aman_123&senderID="+senderID
        +"&receipientno="+buyer_mobile+"&msgtxt="+message+"&state=4");
        
        HttpURLConnection conct = (HttpURLConnection)u.openConnection();
        
        conct.setRequestMethod("GET");
        
        conct.connect();
        
        if(conct.getResponseCode()==200)
        {
            System.out.println("Connection established !!! ");
            
            InputStream in = conct.getInputStream();
            
            String result = "";int data = 0;
            
            while((data = in.read()) != -1)
            {
                result = result + (char)data;
            }
            
            if(result.contains("=0"))
                System.out.println("Msg Sent !!! ");
            else
                System.out.println(result);
        }
        else
        {
            System.out.println(conct.getResponseCode()+" : "+conct.getResponseMessage());
        }
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
    
    
    //.....................................sending message to seller......................................
    
    
    
    String message1=URLEncoder.encode("this is from carlo buyer is "+buyer_name+" "+buyer_mobile+" "+car_brand+" "+car_model+" "+car_variant,"utf-8");
    
    try
    {
        String senderID=URLEncoder.encode("TEST SMS","utf-8");
        
        URL u = new URL("http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=kpassion205@gmail.com:966919021&senderID="+senderID
        +"&receipientno="+mobile+"&msgtxt="+message1+"&state=4");
        
        HttpURLConnection conct = (HttpURLConnection)u.openConnection();
        
        conct.setRequestMethod("GET");
        
        conct.connect();
        
        if(conct.getResponseCode()==200)
        {
            System.out.println("Connection established !!! ");
            
            InputStream in = conct.getInputStream();
            
            String result = "";int data = 0;
            
            
            while((data = in.read()) != -1)
            {
                result = result + (char)data;
            }
            
            if(result.contains("=0"))
                System.out.println("Msg Sent 11111111!!! ");
            else
                System.out.println(result);
        }
        else
        {
            System.out.println(conct.getResponseCode()+" : "+conct.getResponseMessage());
        }
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
    
    
    
    
    
    
    
    
    
    
    
  //String sRemoteURL ="http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=liliora1512@gmail.com:champion2244&senderID=TEST SMS&receipientno="+mobile+"&msgtxt="+message+"&state=4"; 
    
   //String sRemoteURL="http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=liliora1512@gmail.com:champion2244&senderID=TEST SMS&receipientno=9407174371&dcs=0&msgtxt=This is Test message&state=4 ";
   //response.sendRedirect(sRemoteURL);

    RequestDispatcher rd=request.getRequestDispatcher("interest_master.jsp");
    request.setAttribute("user_id", user_id);
    request.setAttribute("ad_id", ad_id);
    
    rd.forward(request, response);
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

//RequestDispatcher rd=request.getRequestDispatcher("dealers-profile.jsp");
//request.setAttribute("user_id", user_id);
//rd.forward(request, response);


%>