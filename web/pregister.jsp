<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbcon.ConnectionDB"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="text.EncryptText"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   
    String name = request.getParameter("name");
    String height = request.getParameter("height");
    String weight = request.getParameter("weight");
    String reason = request.getParameter("reason");
    
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String pass = request.getParameter("password");
    pass = EncryptText.getEncrypted(EncryptText.getEncrypted(EncryptText.getEncrypted(pass,"MD5"),"SHA-1"),"MD5");
    String gender = request.getParameter("gen");
    String add = request.getParameter("address");
    String allergy = request.getParameter("allergy");
    String dob = request.getParameter("dob");
    String operation = request.getParameter("operation");
    String med = request.getParameter("med");
    String disease1 = request.getParameter("disease1");
    String disease2 = request.getParameter("disease2");
    String disease3 = request.getParameter("disease3");
    String disease4 = request.getParameter("disease4");
    String disease5 = request.getParameter("disease5");
    String disease6 = request.getParameter("disease6");
    String disease7 = request.getParameter("disease7");
    
    Connection con = ConnectionDB.getConnection();
    PreparedStatement ps= con.prepareStatement("insert into patient values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
    ps.setString(1, name);
    ps.setString(2, email);
    ps.setString(3, phone);
    ps.setString(4, gender);
    ps.setString(5, add);
    ps.setString(6, dob);
    ps.setString(7, allergy);
    ps.setString(8, operation);
    ps.setString(9, med);
    ps.setString(10, disease1);
    ps.setString(11, disease2);
    ps.setString(12, disease3);
    ps.setString(13, disease4);
    ps.setString(14, disease5);
    ps.setString(15, disease6);
    ps.setString(16, disease7);
    
    if(ps.executeUpdate()>0){
        out.print("Registration Successfull");
        con.commit();
        con.close();
    }else{
            out.print("Can't Register");
            con.close();
    }
%>