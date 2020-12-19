<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbcon.ConnectionDb"%>
<%@page import="java.sql.Connection"%>

<%@page import="text.EncryptText"%>
<%@page import="java.text.SimpleDateFormat"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <link href="css/show.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="row background-img">
            <div class="row mt-3">
                <div class="col-md-4 offset-md-4">
                    <div class="card  mt-4"style="margin-top: 60px!important;background-color: rgba(0,0,0,8)!important;border-radius: 12px !important;">
                        <div class="card-header text-center"style="font-weight: bolder !important;color: white !important;font-size: 20px;">
                            Book Appointment 
                        </div>
                        <div class="card-body"id="user-d">
                            <form>
                                <div class="mb-3 text-center">
                                    <label class="form-label"style="color: white !important;font-weight: bolder !important;">Patient ID / Patient email</label>
                                    <input type="text" class="form-control" name="email" placeholder="Your Email :" required="required">
                    
                                    <div class="form-text"style="color: white !important;">We'll never share your email with anyone else.</div>
                                </div>
                                 <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <label class="form-label"style="color: white !important;font-weight: bolder !important;">Choose Date For Appointment</label>
                            <input type="date" class="form-control" name="date" placeholder="Date Of Appointment" required=""/>  
                    </div>
                            <div class="col-sm-6">
                               <label class="form-label"style="color: white !important;font-weight: bolder !important;">Choose Time For Appointment</label>
                                   <input type="time" class="form-control" name="time" placeholder="Time Of Appoinment" required=""/>  
                </div>
                    
                        
                        <div class="mb-3 text-center">
                            <label class="form-label"style="color: white !important;font-weight: bolder !important;">Please Tell us your Reason for booking </label>
                             <input type="text" class="form-control" name="reason" placeholder="Your Reason for checkup :" required="required">
                             <div class="form-text"style="color: white !important;">We'll connect you within 24hrs from booking .</div>
                                </div>
                       </div>
                      
                        <div class="card-footer text-muted text-center">
                            
                            <button type="submit" class="btn btn-primary mr-2">Confirm Appointment</button>
                            <button type="submit" class="btn btn-primary">Edit</button><br>
                            <button type="submit" class="btn btn-primary mt-3"><a href="welcome.jsp"style="color: white;">Back</a></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
        <script>
            $(document).ready(function(){
              $("#check").click(function(){
                  $("#user-d").hide();
                  $("#user-history").show();
              });  
            });
        </script>
    </body>
</html>

    
    
    