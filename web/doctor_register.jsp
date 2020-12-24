<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbcon.ConnectionDb"%>
<%@page import="java.sql.Connection"%>
<%@page import="text.EncryptText"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   
    String name = request.getParameter("dname");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String pass = request.getParameter("pass");
    pass = EncryptText.getEncrypted(EncryptText.getEncrypted(EncryptText.getEncrypted(pass,"MD5"),"SHA-1"),"MD5");
    String selectspecialization = request.getParameter("spec");
    Connection con = ConnectionDb.getConnection();
    PreparedStatement ps= con.prepareStatement("insert into doctor values(?,?,?,?,?)");
    ps.setString(1, name);
    ps.setString(2, email);
    ps.setString(3, phone);
    ps.setString(4, pass);
    ps.setString(5, selectspecialization);
    
    try {
    if(ps.executeUpdate()>0){
        out.print("Registration Successfull");
         con.close();
    }
    else{
            out.print("Can't Register");
            
            con.close();
      
    }
    
    }catch (Exception e){}
    
%>


