<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbcon.ConnectionDb"%>
<%@page import="java.sql.Connection"%>

<%@page import="text.EncryptText"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   
    String name = request.getParameter("name");
    String height = request.getParameter("height");
    String weight = request.getParameter("weight"); 
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String pass = request.getParameter("password");
    pass = EncryptText.getEncrypted(EncryptText.getEncrypted(EncryptText.getEncrypted(pass,"MD5"),"SHA-1"),"MD5");
    String gender = request.getParameter("gen");
    String add = request.getParameter("address");
    String dob = request.getParameter("dob");
    Connection con = ConnectionDb.getConnection();
    
    PreparedStatement ps= con.prepareStatement("insert into patient values(?,?,?,?,?,?,?,?,?)");
    ps.setString(1, name);
    ps.setString(2,height);
    ps.setString(3,weight);
    ps.setString(4, email);
    ps.setString(5, phone);
    ps.setString(6,pass);
    ps.setString(7, gender);
    ps.setString(8, add);
    ps.setString(9, dob);
  
    
    
    if(ps.executeUpdate()>0){
        out.print("Registration Successfull");
        con.close();
    }else{
            out.print("Can't Register");
            con.close();
    }
%>