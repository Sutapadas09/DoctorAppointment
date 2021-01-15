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
        <style>
            .btn-ctr{
                position:absolute;
                top:10%;

                left:30%;
                width:400px;
                height:100px;
                background:greenyellow;
                border-radius: 10px;
                border:2px solid white;
                text-align:center;

            }
        </style>
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
                    <img src="images/g13.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="col-md-3 btn-ctr d-flex align-items-center justify-content-center ">
                    
                    <a type="button" class="btn btn-primary" style="font-weight:bolder;font-size: 30px;"href="patient_registration.jsp">Patient Registration</a>
              
                </div>
            </div>
        </div>
        <br>
        <br>
        <div class="container">
            <div class="row">

                <div class="col-md-3">
                    <button type="button" class="btn btn-primary">Book Appointment</button>
                </div>
                <div class="col-md-3">
                    <button type="button" class="btn btn-success">Show Appointment</button>
                </div>
                <div class="col-md-3">
                    <button type="button" class="btn btn-danger">Cancel Appointment</button>
                </div>
                <div class="col-md-3">
                    <button type="button" class="btn btn-dark">Edit Profile</button>
                </div>
            </div>   
        </div>
        <br/>
        <br/>
    </body>
</html>
