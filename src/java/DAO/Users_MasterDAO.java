package DAO;

import Connection.GetConnection;
import Connection.SendMailSSL;
import Model.AdsImages_Master;
import Model.Ads_Master;
import Model.Review_master;
import Model.Users_Master;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalDateTime;

public class Users_MasterDAO {
    
        public static boolean add_user(Users_Master user)
        {
            boolean status=false;
            Connection con=null;
            try
            {
                con=GetConnection.getConnection();
                String user_name=user.getUser_name();
                String user_email=user.getUser_email();
                String password=user.getPassword();
                String Primary_contact=user.getPrimary_contact();
   
                String sql="insert into users_master (user_name,user_email,password,primary_contact,user_verified)values(?,?,?,?,?)";
                
                PreparedStatement ps=con.prepareStatement(sql);
                ps.setString(1, user_name);
                ps.setString(2,user_email);
                ps.setString(3, password);
                ps.setString(4, Primary_contact);
                ps.setBoolean(5, false);
                if(ps.executeUpdate()!=0)
                {
                    status=true;
                    SendMailSSL.sendEmail(user.getUser_email());
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
            return status;
        }
        
        
        //..................................................verify user email......................................................
        
        public static boolean verify_user(String user_email)
        {
            boolean status=false;
            Connection con=null;
            try
            {
                con=GetConnection.getConnection();
                String sql="update users_master set user_verified=? where user_email=?";
                PreparedStatement ps=con.prepareStatement(sql);
             ps.setBoolean(1, true);
            ps.setString(2, user_email);
           
            if(ps.executeUpdate()!=0)
            {
                status=true;
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
            
            return status;
            
        }
        
 
        
        
     //.........................................................Login Task..........................................................   
        
 public static boolean checkUser(Users_Master user) 
   {
   Connection con = null;
  boolean status = false;
  try
  {
      
       con=GetConnection.getConnection();
       String user_name = user.getUser_name();
       String password =  user.getPassword();
       
       String sql= "select * from users_master where user_name=? and password=? and user_verified=?";
       PreparedStatement ps = con.prepareStatement(sql);
       ps.setString(1, user_name);
       ps.setString(2, password);
       ps.setBoolean(3, true);
       ResultSet rs= ps.executeQuery();
       if(rs.next())
       {
           status=true;
           
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
   return status;
   }

 //......................................post-vehicle task.....................................

    public static boolean post_vehicle(Ads_Master post_add )
    {
        boolean status=false;
        Connection con=null;
            try
            {
                
                con=GetConnection.getConnection();
                int user_id=post_add.getUser_id();
                String car_brand=post_add.getCar_brand();
                String car_model=post_add.getCar_model();
                String car_variant=post_add.getCar_variant();
                int ownership=post_add.getOwnership();
                boolean insurance=post_add.isInsurance();
                String color=post_add.getColor();
                String car_desc=post_add.getCar_desc();
                String fuel_type=post_add.getFuel_type();
                int reg_year=post_add.getReg_year();
                int kms_driven=post_add.getKms_driven();
                String city=post_add.getCity();
                int exp_sell_price=post_add.getExp_sell_price();
                boolean ad_status=true;
                 LocalDateTime shown_date1= LocalDateTime.now();
    java.sql.Date sqlDate1 = java.sql.Date.valueOf(shown_date1.toLocalDate());
                
                 LocalDateTime shown_date2= LocalDateTime.now();
    java.sql.Date sqlDate2 = java.sql.Date.valueOf(shown_date2.toLocalDate());
                
                java.util.Date d=new java.util.Date();
                 Long timestamp=d.getTime();
        
                 java.util.Date d1=new java.util.Date();
                String sql="insert into ads_master (user_id,car_brand,car_model,car_variant,ownership,insurance,color,car_desc,fuel_type,reg_year,kms_driven,city,exp_sell_price,ad_status,posted_date,expiry_date,timestamp)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                
                PreparedStatement ps=con.prepareStatement(sql);
                
                ps.setInt(1,user_id);
                ps.setString(2, car_brand);
                ps.setString(3,car_model);
                ps.setString(4, car_variant);
                ps.setInt(5, ownership);
                ps.setBoolean(6, insurance);
                ps.setString(7,color);
                ps.setString(8,car_desc);
                ps.setString(9, fuel_type);
                ps.setInt(10, reg_year);
                ps.setInt(11,kms_driven);
                ps.setString(12,city);
                ps.setInt(13, exp_sell_price);
                ps.setBoolean(14, ad_status);
                ps.setDate(15,  sqlDate1);
                ps.setDate(16,  sqlDate2);
                ps.setLong(17, timestamp);
                
                
                if(ps.executeUpdate()!=0)
                {
                    status=true;
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
        return status;
    }
 
    
    
    //......................................Get userid..............................
    
    public static int getUserId(String user_name)
    {
        int user_id=0;
        Connection con=null;
        
            try
            {
      
       con=GetConnection.getConnection();
          
       String sql= "select * from users_master where user_name=?";
       PreparedStatement ps = con.prepareStatement(sql);
       ps.setString(1, user_name);
       ResultSet rs= ps.executeQuery();
       if(rs.next())
       {
           user_id=rs.getInt("user_id");
           
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
     return user_id;
    }
    
    
    
    //........................get add id........................
   
    
    public static int getAddId(String user_id)
    {
        int add_id=0;
        int user_id1=Integer.parseInt(user_id);
        
        Connection con=null;
        
            try
            {
      
       con=GetConnection.getConnection();
          
       String sql= "select ad_id from ads_master where timestamp in (select max(timestamp) from ads_master where user_id=?)";
       PreparedStatement ps = con.prepareStatement(sql);
       ps.setInt(1, user_id1); 
       ResultSet rs= ps.executeQuery();
       if(rs.next())
       {
           add_id=rs.getInt("ad_id");
           
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
        return add_id;
    }
 
    
    
    //.............................to upload image..............................
    
    public static boolean uploadImage(AdsImages_Master upload_image)
    {
        boolean status=false;
        
        Connection con=null;
            try
            {
                con=GetConnection.getConnection();
                int ad_id=upload_image.getAd_id();
                String img_url=upload_image.getImage_url();
                String sql="insert into adsimages_master (ad_id,image_url)values(?,?)";
                
                PreparedStatement ps=con.prepareStatement(sql);
                ps.setInt(1, ad_id);
                ps.setString(2,img_url);
                if(ps.executeUpdate()!=0)
                {
                    status=true;
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
        
        
        
        
        return status;
    }
    


//................................................add interested user......................................



public static boolean addInterestedUser(int user_id,int ad_id)
{
    boolean status=false;
    
    LocalDateTime shown_date= LocalDateTime.now();
    java.sql.Date sqlDate = java.sql.Date.valueOf(shown_date.toLocalDate());
                
     Connection con=null;
        
            try
            {
      
       con=GetConnection.getConnection();
          
       String sql= "select * from interests_master where user_id=? and ad_id=?";
       PreparedStatement ps = con.prepareStatement(sql);
       ps.setInt(1, user_id);
       ps.setInt(2, ad_id);
       ResultSet rs= ps.executeQuery();
       if(!rs.next())
       {
           
           sql="insert into interests_master(ad_id,user_id,shown_date)values(?,?,?)";
           ps=con.prepareStatement(sql);
           ps.setInt(1,ad_id);
           ps.setInt(2,user_id);
           ps.setDate(3, sqlDate);
           if(ps.executeUpdate()!=0)
           {
               status=true;
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
    
    
    
    
    return status;
    
    
    
}



//...........................................Edit Profile............................................

public static boolean edit_profile(Users_Master user)
{
    boolean status=false;
    Connection con=null;
    
     try
            {
                con=GetConnection.getConnection();
                String sql="update users_master set user_name=?,user_email=?,password=?,primary_contact=? where user_id=? and user_verified=?";
                PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, user.getUser_name());
            ps.setString(2, user.getUser_email());
            ps.setString(3, user.getPassword());
            ps.setString(4, user.getPrimary_contact());
            ps.setInt(5,user.getUser_id());
            ps.setBoolean(6, true);
            if(ps.executeUpdate()!=0)
            {
                status=true;
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
           
    
    
    
    
    return status;
}



//......................................................Review Master...................................

 public static boolean add_review(Review_master review)
    {
        boolean status=false;
        
        Connection con=null;
            try
            {
                con=GetConnection.getConnection();
                String username=review.getUsername();
                String comment=review.getComment();
                LocalDateTime shown_date1= LocalDateTime.now();
                java.sql.Date sqlDate1 = java.sql.Date.valueOf(shown_date1.toLocalDate());
               String review_date= sqlDate1.toString();
                System.out.println(username);
                System.out.println(comment);
                
                String sql="insert into user_review (username,review_date,comment)values(?,?,?)";
                
                PreparedStatement ps=con.prepareStatement(sql);
                ps.setString(1, username);
                ps.setString(2,review_date);
                ps.setString(3, comment);
                if(ps.executeUpdate()!=0)
                {
                    status=true;
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
        
        
        
        
        return status;
    }



//.........................................delete add........................................................


 public static boolean delete_add(int ad_id)
    {
        boolean status=false;
        
        Connection con=null;
            try
            {
                con=GetConnection.getConnection();
                
                String sql="delete from ads_master where ad_id=?";
                
                PreparedStatement ps=con.prepareStatement(sql);
                ps.setInt(1,ad_id);
                if(ps.executeUpdate()!=0)
                {
                    status=true;
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
        
        
        
        
        return status;
    }


 

}
