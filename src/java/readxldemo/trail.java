package readxldemo;

import Connection.GetConnection;
import Model.EngineDetails_Master;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

public class trail {


    public static void read_xsl(String file_name) throws FileNotFoundException,IOException {
        
    
    File f=new File("C:\\Users\\HP\\Desktop\\"+file_name);
        FileInputStream fd=new FileInputStream(f);
        POIFSFileSystem poifs=new POIFSFileSystem(fd);
        HSSFWorkbook hssf=new HSSFWorkbook(poifs);
        
        int i=0;
        ArrayList   a0=new ArrayList();
        ArrayList   a1=new ArrayList();
        ArrayList   a2=new ArrayList();
        ArrayList   a3=new ArrayList();
        ArrayList   a4=new ArrayList();
        ArrayList   a5=new ArrayList();
        ArrayList   a6=new ArrayList();
        ArrayList   a7=new ArrayList();
        ArrayList   a8=new ArrayList();
        ArrayList   a9=new ArrayList();
        ArrayList   a10=new ArrayList();
        ArrayList   a11=new ArrayList();
        ArrayList   a12=new ArrayList();
        ArrayList   a13=new ArrayList();
        ArrayList   a14=new ArrayList();
        ArrayList   a15=new ArrayList();
        ArrayList   a16=new ArrayList();
                     
       
        HSSFSheet hssfs=hssf.getSheetAt(0);
        
        Iterator row=hssfs.rowIterator();
            
            while(row.hasNext())
        {
            
            HSSFRow hssfr=(HSSFRow)row.next();
            Iterator cell=hssfr.cellIterator();
            
            switch(i)
            {
                case 0:
                    
                    while(cell.hasNext())
                     {
                            HSSFCell hssfc=(HSSFCell)cell.next();
                            a0.add(hssfc.toString());
                     }
                    break;
                case 1:
                    
                    while(cell.hasNext())
                     {
                        HSSFCell hssfc=(HSSFCell)cell.next();
                        a1.add(hssfc.toString());
                    }
                    break;
                case 2:
                    
                    while(cell.hasNext())
                     {
                        HSSFCell hssfc=(HSSFCell)cell.next();
                        a2.add(hssfc.toString());
                    }
                    break;
                case 3:
                    
                    while(cell.hasNext())
                     {
                        HSSFCell hssfc=(HSSFCell)cell.next();
                        a3.add(hssfc.toString());
                    }
                    break;
                case 4:
                    
                    while(cell.hasNext())
                     {
                        HSSFCell hssfc=(HSSFCell)cell.next();
                        a4.add(hssfc.toString());
                    }
                    break;
                case 5:
                    
                    while(cell.hasNext())
                     {
                        HSSFCell hssfc=(HSSFCell)cell.next();
                        a5.add(hssfc.toString());
                    }
                    break;
                case 6:
                    
                    while(cell.hasNext())
                     {
                        HSSFCell hssfc=(HSSFCell)cell.next();
                        a6.add(hssfc.toString());
                    }
                    break;
                case 7:
                    
                    while(cell.hasNext())
                     {
                        HSSFCell hssfc=(HSSFCell)cell.next();
                        a7.add(hssfc.toString());
                    }
                    break;
                case 8:
                    
                    while(cell.hasNext())
                     {
                        HSSFCell hssfc=(HSSFCell)cell.next();
                        a8.add(hssfc.toString());
                    }
                    break;
                case 9:
                    
                    while(cell.hasNext())
                     {
                        HSSFCell hssfc=(HSSFCell)cell.next();
                        a9.add(hssfc.toString());
                    }
                    break;
                case 10:
                    
                    while(cell.hasNext())
                     {
                        HSSFCell hssfc=(HSSFCell)cell.next();
                        a10.add(hssfc.toString());
                    }
                    break;
                case 11:
                    
                    while(cell.hasNext())
                     {
                        HSSFCell hssfc=(HSSFCell)cell.next();
                        a11.add(hssfc.toString());
                    }
                    break;
                case 12:
                    
                    while(cell.hasNext())
                     {
                        HSSFCell hssfc=(HSSFCell)cell.next();
                        a12.add(hssfc.toString());
                    }
                    break;
                case 13:
                    
                    while(cell.hasNext())
                     {
                        HSSFCell hssfc=(HSSFCell)cell.next();
                        a13.add(hssfc.toString());
                    }
                    break;
                case 14:
                    
                    while(cell.hasNext())
                     {
                        HSSFCell hssfc=(HSSFCell)cell.next();
                        a14.add(hssfc.toString());
                    }
                    break;
                case 15:
                    
                    while(cell.hasNext())
                     {
                        HSSFCell hssfc=(HSSFCell)cell.next();
                        a15.add(hssfc.toString());
                    }
                    break;
                case 16:
                    
                    while(cell.hasNext())
                     {
                        HSSFCell hssfc=(HSSFCell)cell.next();
                        a16.add(hssfc.toString());
                    }
                    break;
                
            }
            
            i=i+1;
            
            
            
        }
            
            for(Object o:a0)
            {
                System.out.println(o);
            }
        
            for(Object o:a1)
            {
                System.out.println(o);
            }
       Connection con=null;
       try
       {
        con=GetConnection.getConnection();
        
        //...................................................Brand Details............................................
        
        String sql="insert into brand_master(brand_id,brand_name)values(?,?)";
           PreparedStatement ps=con.prepareStatement(sql);
           ps.setString(1,a0.get(0).toString());
           ps.setString(2,a0.get(1).toString());
           
           if(ps.executeUpdate()!=0)
           {
               System.out.println("brand inserted");
           }
           else
           {
               System.out.println("not inserted");
           }
        
        
           //..........................................Model Details......................................................
           
        
        
         sql="insert into models_master(model_id,brand_id,model_name,model_type)values(?,?,?,?)";
            ps=con.prepareStatement(sql);
           ps.setString(1,a1.get(0).toString());
           ps.setString(2,a1.get(1).toString());
           ps.setString(3,a1.get(2).toString());
           ps.setString(4,a1.get(3).toString());
           
           if(ps.executeUpdate()!=0)
           {
               System.out.println("models inserted");
           }
           else
           {
               System.out.println("not inserted");
           }
        
        
        //.....................................variant Details...........................................................
        
        
        
        sql="insert into variants_master(variant_id,brand_id,model_id,variant_name,variant_price)values(?,?,?,?,?)";
            ps=con.prepareStatement(sql);
           ps.setString(1,a2.get(0).toString());
           ps.setString(2,a2.get(1).toString());
           ps.setString(3,a2.get(2).toString());
           ps.setString(4,a2.get(3).toString());
           ps.setString(5,a2.get(4).toString());
           
           if(ps.executeUpdate()!=0)
           {
               System.out.println("variant inserted");
           }
           else
           {
               System.out.println("not inserted");
           }
        
        //................................Engine Data..............................................
         sql="insert into enginedetails_master(engine_id,brand_id,model_id,variant_id,engine_type,engine_desc,engine_displacement,no_of_cylinders,max_power,max_torque,fuel_supply_system,turbo_charger,super_charger) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";   
            ps=con.prepareStatement(sql);
           ps.setString(1,a3.get(0).toString());
           ps.setString(2,a3.get(1).toString());
           ps.setString(3,a3.get(2).toString());
           ps.setString(4,a3.get(3).toString());
           ps.setString(5,a3.get(4).toString());
           ps.setString(6,a3.get(5).toString());
           ps.setInt(7,(Double.valueOf(a3.get(6).toString())).intValue());
           ps.setInt(8,(Double.valueOf(a3.get(7).toString())).intValue());
           ps.setString(9,a3.get(8).toString());
           ps.setString(10,a3.get(9).toString());
           ps.setString(11,a3.get(10).toString());
           
           if(a3.get(11).toString().equals("0"))
           ps.setBoolean(12,false);
           else
           ps.setBoolean(12,true);    
           
           
           if(a3.get(12).toString().equals("0"))
           ps.setBoolean(13,false);
           else
           ps.setBoolean(13,true);    
           
           if(ps.executeUpdate()!=0)
           {
               System.out.println("inserted");
           }
           else
           {
               System.out.println("not inserted");
           }
                 
        
        //............................................Transmission Data...................................................
        sql="insert into transdetails_master(trans_id,brand_id,model_id,variant_id,trans_type,gear_box,drive_type) values(?,?,?,?,?,?,?)";   
            ps=con.prepareStatement(sql);
           ps.setString(1,a4.get(0).toString());
           ps.setString(2,a4.get(1).toString());
           ps.setString(3,a4.get(2).toString());
           ps.setString(4,a4.get(3).toString());
           ps.setString(5,a4.get(4).toString());
           ps.setString(6,a4.get(5).toString());
           ps.setString(7,a4.get(6).toString());
           
           if(ps.executeUpdate()!=0)
           {
               System.out.println(" Trans Details inserted");
           }
           else
           {
               System.out.println("not inserted");
           }
        
           //.......................................suspension Details...................................
           
           
        sql="insert into suspensiondetails_master(susp_id,brand_id,model_id,variant_id,front_susp,rear_susp) values(?,?,?,?,?,?)";   
            ps=con.prepareStatement(sql);
           ps.setString(1,a5.get(0).toString());
           ps.setString(2,a5.get(1).toString());
           ps.setString(3,a5.get(2).toString());
           ps.setString(4,a5.get(3).toString());
           ps.setString(5,a5.get(4).toString());
           ps.setString(6,a5.get(5).toString());
           
           if(ps.executeUpdate()!=0)
           {
               System.out.println(" Suspension Details inserted");
           }
           else
           {
               System.out.println("not inserted");
           }   
           
           
         //..................................Steering Details.....................................................
         
        sql="insert into steeringdetails_master(steer_id,brand_id,model_id,variant_id,steer_type,steer_column,turn_radius) values(?,?,?,?,?,?,?)";   
            ps=con.prepareStatement(sql);
           ps.setString(1,a6.get(0).toString());
           ps.setString(2,a6.get(1).toString());
           ps.setString(3,a6.get(2).toString());
           ps.setString(4,a6.get(3).toString());
           ps.setString(5,a6.get(4).toString());
           ps.setString(6,a6.get(5).toString());
           ps.setDouble(7,Double.parseDouble(a6.get(6).toString())); //...........problem..............
           
           if(ps.executeUpdate()!=0)
           {
               System.out.println(" Steering Details inserted");
           }
           else
           {
               System.out.println("not inserted");
           }   
           
           
           //......................................Performance Details....................................
           
        sql="insert into performdetails_master(perform_id,brand_id,model_id,variant_id,top_speed,accelarate) values(?,?,?,?,?,?)";   
            ps=con.prepareStatement(sql);
           ps.setString(1,a7.get(0).toString());
           ps.setString(2,a7.get(1).toString());
           ps.setString(3,a7.get(2).toString());
           ps.setString(4,a7.get(3).toString());
           ps.setInt(5,(Double.valueOf(a7.get(4).toString())).intValue());
           ps.setDouble(6,Double.parseDouble(a7.get(5).toString())); //...........problem..............
           
           if(ps.executeUpdate()!=0)
           {
               System.out.println(" Performance Details inserted");
           }
           else
           {
               System.out.println("not inserted");
           }   
           
           
           //............................................Fuel Deatails.....................................
           
        sql="insert into fueldetails_master(fuel_id,brand_id,model_id,variant_id,city_mileage,arai_mileage,fuel_type,tank_capacity,emission_norm) values(?,?,?,?,?,?,?,?,?)";   
            ps=con.prepareStatement(sql);
           ps.setString(1,a8.get(0).toString());
           ps.setString(2,a8.get(1).toString());
           ps.setString(3,a8.get(2).toString());
           ps.setString(4,a8.get(3).toString());
           ps.setDouble(5,Double.parseDouble(a8.get(4).toString()));
           ps.setDouble(6,Double.parseDouble(a8.get(5).toString())); //...........problem..............
           ps.setString(7,a8.get(6).toString());
           ps.setInt(8,(Double.valueOf(a8.get(7).toString())).intValue());
            ps.setString(9,a8.get(8).toString());
           
            if(ps.executeUpdate()!=0)
           {
               System.out.println(" Fuel Details inserted");
           }
           else
           {
               System.out.println("not inserted");
           }   
           
        
            //.........................Tyre Details...............................................
            
            sql="insert into tyredetails_master(tyre_id,brand_id,model_id,variant_id,tyre_size,tyre_type,wheel_size) values(?,?,?,?,?,?,?)";   
            ps=con.prepareStatement(sql);
           ps.setString(1,a9.get(0).toString());
           ps.setString(2,a9.get(1).toString());
           ps.setString(3,a9.get(2).toString());
           ps.setString(4,a9.get(3).toString());          
           ps.setString(5,a9.get(4).toString());
           ps.setString(6,a9.get(5).toString());
           ps.setInt(7,(Double.valueOf(a9.get(6).toString())).intValue());
            
            if(ps.executeUpdate()!=0)
           {
               System.out.println(" Tyre Details inserted");
           }
           else
           {
               System.out.println("not inserted");
           }   
        
           
           
            //....................................Seating Details............................................
            
            
            
            sql="insert into seatingdetails_master(seat_id,brand_id,model_id,variant_id,seat_capacity,no_of_doors,fld_rear_seats) values(?,?,?,?,?,?,?)";   
            ps=con.prepareStatement(sql);
           ps.setString(1,a10.get(0).toString());
           ps.setString(2,a10.get(1).toString());
           ps.setString(3,a10.get(2).toString());
           ps.setString(4,a10.get(3).toString());          
           ps.setInt(5,(Double.valueOf(a10.get(4).toString())).intValue());
           ps.setInt(6,(Double.valueOf(a10.get(5).toString())).intValue());
            ps.setBoolean(7, Boolean.parseBoolean(a10.get(6).toString()));
            if(ps.executeUpdate()!=0)
           {
               System.out.println(" Seating Details inserted");
           }
           else
           {
               System.out.println("not inserted");
           }
            
            
            //..................................Convenience Details..................................................
            
            sql="insert into conveniencedetails_master(conv_id,brand_id,model_id,variant_id,pwr_steer,pwr_win_front,pwr_win_rear,remote_trunk,low_fuel_light,rear_ac_vents,steer_mnt_ctrl,cruise_ctrl,park_sensors,park_camera,gps,keyless_entry,en_start_stop_btn,drive_modes,cooled_glove_box,voice_ctrl,touch_sat_nav_sys) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";   
            ps=con.prepareStatement(sql);
           ps.setString(1,a11.get(0).toString());
           ps.setString(2,a11.get(1).toString());
           ps.setString(3,a11.get(2).toString());
           ps.setString(4,a11.get(3).toString());          
           ps.setBoolean(5, Boolean.parseBoolean(a11.get(4).toString()));
           ps.setBoolean(6, Boolean.parseBoolean(a11.get(5).toString()));
           ps.setBoolean(7, Boolean.parseBoolean(a11.get(6).toString()));
           ps.setBoolean(8, Boolean.parseBoolean(a11.get(7).toString()));
           ps.setBoolean(9, Boolean.parseBoolean(a11.get(8).toString()));
           ps.setBoolean(10, Boolean.parseBoolean(a11.get(9).toString()));
           ps.setBoolean(11, Boolean.parseBoolean(a11.get(10).toString()));
           ps.setBoolean(12, Boolean.parseBoolean(a11.get(11).toString()));
           ps.setBoolean(13, Boolean.parseBoolean(a11.get(12).toString()));
           ps.setBoolean(14, Boolean.parseBoolean(a11.get(13).toString()));
           ps.setBoolean(15, Boolean.parseBoolean(a11.get(14).toString()));
           ps.setBoolean(16, Boolean.parseBoolean(a11.get(15).toString()));
           ps.setBoolean(17, Boolean.parseBoolean(a11.get(16).toString()));
           ps.setString(18, (a11.get(17).toString()));
           ps.setBoolean(19, Boolean.parseBoolean(a11.get(18).toString()));
           ps.setBoolean(20, Boolean.parseBoolean(a11.get(19).toString()));
           ps.setBoolean(21, Boolean.parseBoolean(a11.get(20).toString()));
          
            if(ps.executeUpdate()!=0)
           {
               System.out.println(" Seating Details inserted");
           }
           else
           {
               System.out.println("not inserted");
           }
            
           
            
            //...................................Interior Details......................................
            
            
            sql="insert into interiordetails_master(interior_id,brand_id,model_id,variant_id,ac,adjust_steer_height,adjust_steer_reach,tachometer,tripmeter,leather_seats) values(?,?,?,?,?,?,?,?,?,?)";   
            ps=con.prepareStatement(sql);
           ps.setString(1,a12.get(0).toString());
           ps.setString(2,a12.get(1).toString());
           ps.setString(3,a12.get(2).toString());
           ps.setString(4,a12.get(3).toString());          
           ps.setBoolean(5, Boolean.parseBoolean(a12.get(4).toString()));
           ps.setBoolean(6, Boolean.parseBoolean(a12.get(5).toString()));
           ps.setBoolean(7, Boolean.parseBoolean(a12.get(6).toString()));
           ps.setBoolean(8, Boolean.parseBoolean(a12.get(7).toString()));
           ps.setBoolean(9, Boolean.parseBoolean(a12.get(8).toString()));
           ps.setBoolean(10, Boolean.parseBoolean(a12.get(9).toString()));
          
            if(ps.executeUpdate()!=0)
           {
               System.out.println(" Interior Details inserted");
           }
           else
           {
               System.out.println("not inserted");
           }
            
            
            
            //..................................Exterior Details........................................
            
            sql="insert into exteriordetails_master(exterior_id,brand_id,model_id,variant_id,fog_lights,electric_orvm,rain_wipers,rear_wipers,alloy_wheels,rear_spoiler,sun_roof,orvm_turn,smoke_lamps,roof_rail) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";   
            ps=con.prepareStatement(sql);
           ps.setString(1,a13.get(0).toString());
           ps.setString(2,a13.get(1).toString());
           ps.setString(3,a13.get(2).toString());
           ps.setString(4,a13.get(3).toString());          
           ps.setBoolean(5, Boolean.parseBoolean(a13.get(4).toString()));
           ps.setBoolean(6, Boolean.parseBoolean(a13.get(5).toString()));
           ps.setBoolean(7, Boolean.parseBoolean(a13.get(6).toString()));
           ps.setBoolean(8, Boolean.parseBoolean(a13.get(7).toString()));
           ps.setBoolean(9, Boolean.parseBoolean(a13.get(8).toString()));
           ps.setBoolean(10, Boolean.parseBoolean(a13.get(9).toString()));
          ps.setBoolean(11, Boolean.parseBoolean(a13.get(10).toString()));
          ps.setBoolean(12, Boolean.parseBoolean(a13.get(11).toString()));
           ps.setBoolean(13, Boolean.parseBoolean(a13.get(12).toString()));
          ps.setBoolean(14, Boolean.parseBoolean(a13.get(13).toString()));
          
            if(ps.executeUpdate()!=0)
           {
               System.out.println(" Interior Details inserted");
           }
           else
           {
               System.out.println("not inserted");
           }
            
            
            //.....................................Entertain details.........................................................
            
            sql="insert into entertaindetails_master(entertain_id,brand_id,model_id,variant_id,cd_player,radio,tdin_audio,bluetooth,usb_aux,touch_screen) values(?,?,?,?,?,?,?,?,?,?)";   
            ps=con.prepareStatement(sql);
           ps.setString(1,a14.get(0).toString());
           ps.setString(2,a14.get(1).toString());
           ps.setString(3,a14.get(2).toString());
           ps.setString(4,a14.get(3).toString());          
           ps.setBoolean(5, Boolean.parseBoolean(a14.get(4).toString()));
           ps.setBoolean(6, Boolean.parseBoolean(a14.get(5).toString()));
           ps.setBoolean(7, Boolean.parseBoolean(a14.get(6).toString()));
           ps.setBoolean(8, Boolean.parseBoolean(a14.get(7).toString()));
           ps.setBoolean(9, Boolean.parseBoolean(a14.get(8).toString()));
           ps.setBoolean(10, Boolean.parseBoolean(a14.get(9).toString()));
          
            if(ps.executeUpdate()!=0)
           {
               System.out.println(" Entertain Details inserted");
           }
           else
           {
               System.out.println("not inserted");
           }


            
            //...................................................Dimension Details................................................
            
            
            sql="insert into dimensiondetails_master(dimension_id,brand_id,model_id,variant_id,length,width,height,grnd_clearance,wheel_base,kerb_weight) values(?,?,?,?,?,?,?,?,?,?)";   
            ps=con.prepareStatement(sql);
           ps.setString(1,a15.get(0).toString());
           ps.setString(2,a15.get(1).toString());
           ps.setString(3,a15.get(2).toString());
           ps.setString(4,a15.get(3).toString());          
            ps.setInt(5,(Double.valueOf(a15.get(4).toString())).intValue());
             ps.setInt(6,(Double.valueOf(a15.get(5).toString())).intValue());
              ps.setInt(7,(Double.valueOf(a15.get(6).toString())).intValue());
               ps.setInt(8,(Double.valueOf(a15.get(7).toString())).intValue());
                ps.setInt(9,(Double.valueOf(a15.get(8).toString())).intValue());
                 ps.setInt(10,(Double.valueOf(a15.get(9).toString())).intValue());
              
            if(ps.executeUpdate()!=0)
           {
               System.out.println(" Dimension Details inserted");
           }
           else
           {
               System.out.println("not inserted");
           }

            
            
            //..............................................Safety Features..............................................
            
            sql="insert into safetyfeatures_master(feature_id,brand_id,model_id,variant_id,anti_lock_break,brake_assist,central_lock ,pwr_door_lock ,child_safety_lock,anti_theft_alarm,drvr_airbag,passenger_airbag,side_front_airbag,side_rear_airbag,projector_headlamp,rear_seat_belt,seat_belt_warn ,traction_ctrl,child_seat ,hill_assist,engine_immobile,engine_check_warn ,EBD) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";   
            ps=con.prepareStatement(sql);
           ps.setString(1,a16.get(0).toString());
           ps.setString(2,a16.get(1).toString());
           ps.setString(3,a16.get(2).toString());
           ps.setString(4,a16.get(3).toString());          
           ps.setBoolean(5, Boolean.parseBoolean(a16.get(4).toString()));
           ps.setBoolean(6, Boolean.parseBoolean(a16.get(5).toString()));
           ps.setBoolean(7, Boolean.parseBoolean(a16.get(6).toString()));
           ps.setBoolean(8, Boolean.parseBoolean(a16.get(7).toString()));
           ps.setBoolean(9, Boolean.parseBoolean(a16.get(8).toString()));
           ps.setBoolean(10, Boolean.parseBoolean(a16.get(9).toString()));
           ps.setBoolean(11, Boolean.parseBoolean(a16.get(10).toString()));
           ps.setBoolean(12, Boolean.parseBoolean(a16.get(11).toString()));
           ps.setBoolean(13, Boolean.parseBoolean(a16.get(12).toString()));
           ps.setBoolean(14, Boolean.parseBoolean(a16.get(13).toString()));
           ps.setBoolean(15, Boolean.parseBoolean(a16.get(14).toString()));
           ps.setBoolean(16, Boolean.parseBoolean(a16.get(15).toString()));
           ps.setBoolean(17, Boolean.parseBoolean(a16.get(16).toString()));
           ps.setBoolean(18, Boolean.parseBoolean(a16.get(17).toString()));
           ps.setBoolean(19, Boolean.parseBoolean(a16.get(18).toString()));
           ps.setBoolean(20, Boolean.parseBoolean(a16.get(19).toString()));
           ps.setBoolean(21, Boolean.parseBoolean(a16.get(20).toString()));
           ps.setBoolean(22, Boolean.parseBoolean(a16.get(21).toString()));
           ps.setBoolean(23, Boolean.parseBoolean(a16.get(22).toString()));
        
            if(ps.executeUpdate()!=0)
           {
               System.out.println(" Safety Features Details inserted");
           }
           else
           {
               System.out.println("not inserted");
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
       
            
}
}