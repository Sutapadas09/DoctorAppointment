<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbcon.ConnectionDb"%>
<%@page import="java.sql.Connection"%>
<%@page import="text.EncryptText"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   
    String cname = request.getParameter("cname");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String pass = request.getParameter("pass");
    pass = EncryptText.getEncrypted(EncryptText.getEncrypted(EncryptText.getEncrypted(pass,"MD5"),"SHA-1"),"MD5");
    Connection con = ConnectionDb.getConnection();
    PreparedStatement ps= con.prepareStatement("insert into clinic values(?,?,?,?,?)");
    ps.setString(1, cname);
    ps.setString(2, name);
    ps.setString(3, email);
    ps.setString(4, phone);
    ps.setString(5, pass);
    
    try {
    if(ps.executeUpdate()>0){
        out.print("Registration Successfull");
          response.sendRedirect("login.jsp");
         con.close();
        
    }
    else{
            out.print("Can't Register");
            
            con.close();
      
    }
    
    }catch (Exception e){}

%>


