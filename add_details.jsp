<%
    Object admin=session.getAttribute("admin");
if(admin==null)
response.sendRedirect("admin.jsp");


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        <table>
            <form action="add_details_task.jsp"  enctype="multipart/form-data" method="post" >
            <tr>
                <td>XSL file</td>
                     <td>
                     <input type="file" name="xsl_file"  required="true"> 
                     </td>
            </tr>
            <tr>
            <input type="submit" value="add car"/>
            </tr>
            </form>
        </table>   
    
    
    </body>
</html>
