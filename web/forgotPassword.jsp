<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbcon.ConnectionDb"%>
<%@page import="java.sql.Connection"%>
<%@page import="text.EncryptText"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String email = request.getParameter("email");
    String pass = request.getParameter("pass");
    pass = EncryptText.getEncrypted(EncryptText.getEncrypted(EncryptText.getEncrypted(pass,"MD5"),"SHA-1"),"MD5");
    Connection con = ConnectionDb.getConnection();
    PreparedStatement ps= con.prepareStatement("select * from users where email=?");
    ps.setString(1, email);
    ResultSet rs = ps.executeQuery();
    
    if(rs!=null){
        
         PreparedStatement ps1= con.prepareStatement("update users pass='+pass+' where email='+email+'");
        out.println("password update successfully");
        con.commit();
        con.close();
    }else{
            out.print("Invaild Email Id");
            con.close();
    }
    
%>


