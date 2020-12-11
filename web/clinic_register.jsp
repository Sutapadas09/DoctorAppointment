<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbcon.ConnectionDb"%>
<%@page import="java.sql.Connection"%>
<%@page import="text.EncryptText"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   
    String clinicname = request.getParameter("clinicname");
    String username = request.getParameter("usercname");
    String userid = request.getParameter("userid");
    String phone = request.getParameter("phone");
    String pass = request.getParameter("password");
    pass = EncryptText.getEncrypted(EncryptText.getEncrypted(EncryptText.getEncrypted(pass,"MD5"),"SHA-1"),"MD5");
    Connection con = ConnectionDb.getConnection();
    PreparedStatement ps= con.prepareStatement("insert into clinic values(?,?,?,?,?)");
    ps.setString(1, clinicname);
    ps.setString(2, username);
    ps.setString(3, userid);
    ps.setString(4, phone);
    ps.setString(5, pass);
    if(ps.executeUpdate()>0){
        out.print("Registration Successfull");
        con.close();
    }else{
            out.print("Can't Register");
            con.close();
    }
%>


