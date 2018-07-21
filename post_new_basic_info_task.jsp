<%@page import="DAO.admin_masterDAO"%>
<%@page import="Model.Variants_Master"%>
<%@page import="Model.Models_Master"%>
<%@page import="Model.Brands_Master"%>
<%
    
   int form_no=Integer.parseInt(request.getParameter("form_no"));
   switch(form_no)
   {
       case 1:  
    
            String brand_id=request.getParameter("brand_id");
            String brand_name=request.getParameter("brand_name");
            String model_id=request.getParameter("model_id");
            String model_name=request.getParameter("model_name");
            String model_type=request.getParameter("model_type");
            String variant_id=request.getParameter("variant_id");
            String variant_name=request.getParameter("variant_name");
            String variant_price=request.getParameter("variant_price");
            session.setAttribute("brand_id", brand_id);
            session.setAttribute("model_id", model_id);
            session.setAttribute("variant_id", variant_id);
            
            Model.Brands_Master brand=new Brands_Master(brand_id, brand_name);
            Model.Models_Master model=new Models_Master(model_id, brand_id, model_name, model_type);
            Model.Variants_Master variant=new Variants_Master(variant_id, brand_id, model_id, variant_name, variant_price);

            if(admin_masterDAO.add_brand_model_variant(brand,model,variant))
            {
                RequestDispatcher rd=request.getRequestDispatcher("engine_details.jsp");
                rd.forward(request, response);

            }

            break;
            
            
       case 2:
           %>
           <jsp:useBean id="engine" class="Model.EngineDetails_Master" scope="request"></jsp:useBean>
           <jsp:setProperty name="engine" property="*"></jsp:setProperty>
              <%
                  System.out.println("enejhnkl");
                  if(admin_masterDAO.add_engine(engine ,session.getAttribute("brand_id").toString(),session.getAttribute("model_id").toString(),session.getAttribute("variant_id").toString()))
                  { 
                     System.out.println("enejhnklnbbbj");
                   
                       RequestDispatcher rd=request.getRequestDispatcher("trans_details.jsp");
                        rd.forward(request, response);
                
                  }
                  break;
           
}
%>