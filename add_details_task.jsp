<%@page import="readxldemo.trail"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.sql.Connection"%>
<%
  String xsl_file = "";
    try
    {
        DiskFileItemFactory factory = new DiskFileItemFactory();
         ServletFileUpload upload = new ServletFileUpload(factory);
    
    List<FileItem>list = upload.parseRequest(request);
    Iterator<FileItem>itr = list.iterator();
        if(itr.hasNext())
            {
                
                
                FileItem f=itr.next();
                String fieldname=f.getFieldName();
                    
                    if(fieldname.equals("xsl_file"))
                    {
                        xsl_file=f.getName();
                       
                        
                    }
                    }
                
        
    trail.read_xsl(xsl_file);
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
%>