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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" >
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" ></script>
   
    </head>
    <body>
        
         
       
        <nav class="navbar sticky-top navbar-dark bg-dark">
          <a class="navbar-brand" href="#">Patient</a>
          
        <div class="navbar-nav" style="color:White">
            Welcome
        </div>
        <%--<button type="button" class="btn btn-primary" onclick="window.location.href='logout.jsp?key=<% out.print(sess.getAttribute("log_key"));%>'">Logout</button> --%>
        </nav>
        <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="images/g12.jpg" class="d-block w-100" alt="...">
              </div>
             </div>
          </div>
        <br>
        <br>
        <div>
            
           <button type="button" class="btn btn-primary">Book Appointment</button>
           <button type="button" class="btn btn-success">Show Appointment</button>
           <button type="button" class="btn btn-danger">Cancel Appointment</button>
           <button type="button" class="btn btn-dark">Edit Profile</button>

        </div>   

       
    </body>
</html>
