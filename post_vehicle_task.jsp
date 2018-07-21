<%@page import="Model.Ads_Master"%>
<%@page import="Model.AdsImages_Master"%>
<%@page import="DAO.Users_MasterDAO"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%

Object user=session.getAttribute("user_name");
if(user==null)
{
    %>
    <script>
        alert("please login first");
        window.location.href="home.jsp";
        
    </script>
    <%
}
else
{
    
  
  String car_brand="";
  String car_model ="";
  String car_variant ="";
  int exp_sell_price=0;
  int user_id=0;
  int reg_year=0;
  int ownership=0;
  int kms_driven=0;
  String fuel_type="";
  String color="";
  String city="";
  String car_desc="";
  Boolean insurance=false;
    String image_url = "";
        
      try
    {
         DiskFileItemFactory factory = new DiskFileItemFactory();
         ServletFileUpload upload = new ServletFileUpload(factory);
    
       List<FileItem>list = upload.parseRequest(request);
       Iterator<FileItem>itr = list.iterator();
        while(itr.hasNext())
            {
                FileItem f1=itr.next();
                String fieldname=f1.getFieldName();
                    
                if(f1.isFormField())
                {
                    if(fieldname.equals("user_id"))
                        user_id=Integer.parseInt(f1.getString());
                   if(fieldname.equals("car_brand"))
                      car_brand=f1.getString();
                    if(fieldname.equals("car_model"))
                         car_model=f1.getString();
                    if(fieldname.equals("car_variant"))
                         car_variant=f1.getString();

                         if(fieldname.equals("exp_sell_price"))
                      exp_sell_price=Integer.parseInt(f1.getString());
                    if(fieldname.equals("reg_year"))
                         reg_year=Integer.parseInt(f1.getString());
                    if(fieldname.equals("ownership"))
                         ownership=Integer.parseInt(f1.getString());

                     if(fieldname.equals("kms_driven"))
                         kms_driven=Integer.parseInt(f1.getString());
                       if(fieldname.equals("fuel_type"))
                         fuel_type=f1.getString();

                       if(fieldname.equals("color"))
                         color=f1.getString();
                         
                         if(fieldname.equals("city"))
                         city=f1.getString();
                       if(fieldname.equals("car_desc"))
                         car_desc=f1.getString();
                       if(fieldname.equals("insurance"))
                         insurance=Boolean.parseBoolean(f1.getString());
                       
                }
                else
                {
                    if(fieldname.equals("image_url"))
                    {
                        
                        image_url=f1.getName();
                        String imagefilepath=
getServletContext().getRealPath("/")+"image_file/"+image_url;
                        System.out.println(image_url);
                        System.out.println(imagefilepath);

                        File fp=new File(imagefilepath);
                       f1.write(fp);
                    }
                    }
                 
                }
                
System.out.println(user_id);
System.out.println(insurance);
System.out.println(car_brand);
System.out.println(car_model);
System.out.println(car_variant);
System.out.println(car_desc);
System.out.println(color);
System.out.println(city);
System.out.println(image_url);

        
                Ads_Master post_add=new Ads_Master(user_id, car_brand, car_model, car_variant, ownership, insurance, color, car_desc, fuel_type, reg_year, kms_driven, city, exp_sell_price);

//.....................................insert form field in ads_master..........................
if(Users_MasterDAO.post_vehicle(post_add))
        {
 
        //....................insert file.................................

        int ad_id=Users_MasterDAO.getAddId(
session.getAttribute("user_id").toString());
    

        
   
    System.out.println(image_url);

    AdsImages_Master upload_image=new AdsImages_Master(ad_id,image_url);


        if(Users_MasterDAO.uploadImage(upload_image))
        {
            %>
            <script>
                alert("image saved");
                window.location.href="post-vehicle.jsp";
                </script>
            <%
        }
        else
        {
            response.sendRedirect("error.jsp");
        }
            }

            }

     
    catch(Exception e)
    {
        e.printStackTrace();
    }

        
        
        }

  %>