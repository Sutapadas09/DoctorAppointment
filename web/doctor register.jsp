<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbcon.ConnectionDb"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="text.EncryptText"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   
    String name = request.getParameter("doctor's name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String pass = request.getParameter("password");
    pass = EncryptText.getEncrypted(EncryptText.getEncrypted(EncryptText.getEncrypted(pass,"MD5"),"SHA-1"),"MD5");
    String booking = request.getParameter("booking");
    String fees = request.getParameter("fees");
    String selectspecialization = request.getParameter("select specialization");
    Connection con = ConnectionDb.getConnection();
    PreparedStatement ps= con.prepareStatement("insert into student values(?,?,?,?,?,?,?,?,?,?)");
    ps.setString(1, name);
    ps.setString(2, email);
    ps.setString(3, phone);
    ps.setString(4, booking);
    ps.setString(5, fees);
    ps.setString(6, selectspecialization);
    ps.setString(7, pass);
    if(ps.executeUpdate()>0){
        out.print("Registration Successfull");
        con.close();
    }else{
            out.print("Can't Register");
            con.close();
    }
%>


