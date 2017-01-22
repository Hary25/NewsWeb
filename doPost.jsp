<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.io.File"%>
<%@ page import="java.text.*" %>
<%@include file = "connect.jsp"%>

<% 
    int count_index=0;
    String []data = {"","","","","",""};
    Date date = new Date();
    SimpleDateFormat ft = new SimpleDateFormat ("yyyyMMddhhmmssa");
    String datetime=ft.format(date);
    String path="C:/xampp/tomcat/webapps/aperture/photo";
    String path_db="photo";
    boolean isMultipart = ServletFileUpload.isMultipartContent(request);
    FileItem item =null;
    List items = null;
       if (isMultipart){
             FileItemFactory factory = new DiskFileItemFactory();
             ServletFileUpload upload = new ServletFileUpload(factory);
                 try{
                     items = upload.parseRequest(request);
                 }catch(FileUploadException e){
                     e.printStackTrace();
                 }
             Iterator itr = items.iterator();
             while (itr.hasNext()){
            
                 item= (FileItem) itr.next();
                 if(!item.isFormField()){
                     try{
                         data[count_index] = item.getName();
                     }catch(Exception e){
                     
                     }
                     count_index++;
                 }else{
                    data[count_index]=item.getString();
                    count_index++;
                 }
             }
                
                         try{
                              File savedFile = new File(path+ "/"+datetime+"_"+data[2]) ;
                              String  path_image=path_db+ "/"+datetime+"_"+data[2];
                               
                                 
                                item.write(savedFile);
                              int flag=st.executeUpdate("insert into berita values(0,'"+data[0]+"','"+data[1]+"','"+data[2]+"','"+data[3]+"')"); 
                                if(flag>0){
                                  response.sendRedirect("index.jsp");
                                }else{
                                  response.sendRedirect("../View/Insert_Product.jsp");
                                }
                            }catch(Exception e1){
                              
                            }
                      
       
}
     
                                    
  %>