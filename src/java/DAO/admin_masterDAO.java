package DAO;

import Connection.GetConnection;
import Model.Brands_Master;
import Model.EngineDetails_Master;
import Model.Models_Master;
import Model.Variants_Master;
import Model.admin_master;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class admin_masterDAO {
            public static boolean check_admin(admin_master admin)
            {
                boolean status=false;
                Connection con=null;
                try
  {
      
       con=GetConnection.getConnection();
       String username = admin.getUsername();
       String password =  admin.getPassword();
       
       String sql= "select * from admin_master where username=? and password=?";
       PreparedStatement ps = con.prepareStatement(sql);
       ps.setString(1, username);
       ps.setString(2, password);
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
            
            
            
            public static boolean add_brand_model_variant(Brands_Master brand,Models_Master model,Variants_Master variant)
            {
                boolean status=false;
                Connection con=null;
       try
       {
        con=GetConnection.getConnection();
        
        //...................................................Brand Details............................................
        
        String sql="insert into brand_master(brand_id,brand_name)values(?,?)";
           PreparedStatement ps=con.prepareStatement(sql);
           ps.setString(1,brand.getBrand_id());
           ps.setString(2,brand.getBrand_name());
           
           sql="insert into models_master(model_id,brand_id,model_name,model_type)values(?,?,?,?)";
           PreparedStatement ps1=con.prepareStatement(sql);
           ps1.setString(1,model.getModel_id());
           ps1.setString(2,model.getBrand_id());
           ps1.setString(3,model.getModel_name());
           ps1.setString(4,model.getModel_type());
           
           
           sql="insert into variants_master(variant_id,brand_id,model_id,variant_name,variant_price)values(?,?,?,?,?)";
           PreparedStatement ps2=con.prepareStatement(sql);
           ps2.setString(1,variant.getVariant_id());
           ps2.setString(2,variant.getBrand_id());
           ps2.setString(3,variant.getModel_id());
           ps2.setString(4,variant.getVariant_name());
           ps2.setString(5,variant.getVariant_price());
        
        
           if(ps.executeUpdate()!=0 && ps1.executeUpdate()!=0 && ps2.executeUpdate()!=0)
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
            
           //..................adding engine details..................................
            
            
            
         
            
            public static boolean add_engine(EngineDetails_Master engine ,String brand_id,String model_id,String variant_id)
            {
                boolean status=false;
                Connection con=null;
       try
       {
        con=GetConnection.getConnection();
        
        //...................................................Brand Details............................................
        
        String sql="insert into enginedetails_master(engine_id,brand_id,model_id,variant_id,engine_type,engine_desc,engine_displacement,no_of_cylinders,max_power,max_torque,fuel_supply_system,turbo_charger,super_charger) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";   
         PreparedStatement   ps=con.prepareStatement(sql);
           ps.setString(1,engine.getEngine_id());
           ps.setString(2,brand_id);
           ps.setString(3,model_id);
           ps.setString(4,variant_id);
           ps.setString(5,engine.getEngine_type());
           ps.setString(6,engine.getEngine_desc());
           ps.setInt(7,engine.getEngine_displacement());
           ps.setInt(8,engine.getNo_of_cylinders());
           ps.setString(9,engine.getMax_power());
           ps.setString(10,engine.getMax_torque());
           ps.setString(11,engine.getFuel_supply_system());
           ps.setBoolean(12, engine.isTurbo_charger());
           ps.setBoolean(13, engine.isSuper_charger());
           
            
           if(ps.executeUpdate()!=0)
           {
               System.out.println(" engine inserted");
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
