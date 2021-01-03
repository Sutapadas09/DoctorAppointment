
<%@page import="doctor.Doctor"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbcon.ConnectionDb"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <style>
            .img1{
                border-radius: 250px;
            }
            .container {
                position: relative;
                width: 100%;
              }
            .image {
                opacity: 1;
                display: block;
                transition: .5s ease;
                backface-visibility: hidden;
              }
            .middle {
                transition: .5s ease;
                opacity: 0;
                position: absolute;
                top: 50%;
                left: 50%;
                color: white;
                font-size: 16px;
                padding: 16px 32px;
                transform: translate(-50%, -50%);
                -ms-transform: translate(-50%, -50%);
                text-align: center;
              }
              .container:hover .image {
                opacity: 0.3;
              }
              .container:hover .middle {
                opacity: 1;
              }

        </style>
    </head>
    <body>
         <%
            HttpSession sess = request.getSession(false);
            if(sess.getAttribute("name") != null){
        %>
        <nav class="navbar navbar-dark bg-dark">
                <a class="navbar-brand" href="#">
                  <img src="images/c7.png" width="30" height="30" class="d-inline-block align-top" alt="" loading="lazy">
                
                </a>
            <div class="navbar-nav" style="color: white">
                Welcome <strong><% out.print(sess.getAttribute("name"));%></strong>
            </div>
            <button class="btn btn-sm btn-success" onclick="window.location.href='logout.jsp?key=<% out.print(sess.getAttribute("log_key"));%>'">Logout</button>
            
        </nav>
       
         
        <%
            Connection con = ConnectionDb.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from doctor where email=?");
            ps.setString(1,sess.getAttribute("email").toString());
            ResultSet rs = ps.executeQuery();
            rs.next();
            Doctor s = new Doctor();
            s.setName(rs.getString("name"));
            s.setPhone(rs.getString("Phone"));
            s.setSpecialization(rs.getString("Specialization"));
             //s.setPicture(rs.getString("Picture"));
       
        
        %>
    <center>
        <div style="width: 75%;margin: 20px">
        <table class="table" border="6">
            <tr>
                <td><% out.print("Name: "+ s.getName()+"<br/>"); %></td>
                <td rowspan="6" style="width:450px;">
                    <div class="container">  
                        <img src="<% out.print(s.getPicture()); %>" width="250" height="250" class="image" alt="Responsive image">
                        <button class="middle btn btn-primary" data-toggle="modal" data-target="#exampleModal">Upload Image</button>
                    </div>
                    
                </td>
            </tr>
            <tr>
                <td><% out.print("Phone: "+ s.getPhone()+"<br/>"); %></td>   
            </tr>
            <tr>
                <td><% out.print("Specialization: "+ s.getSpecialization()+"<br/>"); %></td>   
            </tr>
            
        </table>
        </div>
    </center>
        <%
            }else{
                response.sendRedirect("login.html");
            }
        %>
        
                <!-- Modal -->
             <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
               <div class="modal-dialog">
                 <div class="modal-content">
                   <div class="modal-header">
                     <h5 class="modal-title" id="exampleModalLabel">Upload Profile Image</h5>
                     <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                       <span aria-hidden="true">&times;</span>
                     </button>
                   </div>
                   <div class="modal-body">
                       <form action="uploadImage.jsp" method="post" enctype="multipart/form-data">
                           <input type="file" class="form-control" name="image"/>
                   </div>
                   <div class="modal-footer">
                     <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                     <button type="submit" class="btn btn-primary">Save changes</button>
                   </form>
                   </div>
                 </div>
               </div>
             </div>
    </body>
</html>