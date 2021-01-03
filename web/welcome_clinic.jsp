<%-- 
    Document   : welcome_clinic
    Created on : 17 Dec, 2020, 7:26:33 PM
    Author     : Supriya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <style>
            *{padding:0;
              margin:0;}
            body{background:url("images/g13.jpg");
                 background-attachment: fixed;
                 background-size: cover;
                 background-position: center center;
            }
        </style>
    </head>

    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-4 offset-md-3">
                    <div class="card"style="margin-top:80px;border-radius: 15px;background:black;width: 32rem;">
                        <div class="card-header"style="color:white;font-size:20px;font-weight: bolder;">
                            Opening Hours
                        </div>
                        <div class="card-body"style="color:white;font-weight: bolder;">
                            <div id="time1">
                                <h5 class="card-title">Please select your visit timing</h5>

                                <a href="#" class="btn btn-primary" id="chck">Check Availability</a>
                            </div>
                            <div class="mt-4" id="time2"  >
                                <table class="table table-striped" >
                                    
                                    <tbody>
                                        <tr>
                                            <th scope="row"style="background: white;color: black;">Monday</th>
                                            <td><input class="btn btn-primary" type="button" value="09:00AM-03:00PM"></td>
                                            <td><input class="btn btn-primary" type="button" value="06:00PM-10:00PM"></td>
                                            
                                        </tr>
                                        <tr>
                                            <th scope="row"style="background: white;color: black;">Tuesday</th>
                                            
                                            <td><input class="btn btn-primary" type="button" value="07:00PM-10.00PM"></td>
                                            
                                        </tr>
                                        <tr>
                                            <th scope="row"style="background: white;color: black;">Wednesday</th>
                                            <td><input class="btn btn-primary" type="button" value="08:00AM-12:00PM"></td>
                                            
                                            
                                        </tr>
                                        <tr>
                                            <th scope="row"style="background: white;color: black;">Thursday</th>
                                            <td><input class="btn btn-primary" type="button" value="08:00AM-11:00AM"></td>
                                            <td><input class="btn btn-primary" type="button" value="05:00PM-09:00PM"></td>
                                            
                                        </tr>
                                        <tr>
                                            <th scope="row"style="background: white;color: black;">Friday</th>
                                            
                                            <td><input class="btn btn-primary" type="button" value="06:00PM-09:00PM"></td>
                                            
                                        </tr>
                                        <tr>
                                            <th scope="row"style="background: white;color: black;">Saturday</th>
                                            <td><input class="btn btn-primary" type="button" value="09:00AM-11:00AM"></td>
                                            <td><input class="btn btn-primary" type="button" value="04:00PM-07:00PM"></td>
                                            
                                        </tr>
                                        <tr>
                                            <th scope="row"style="background: white;color: black;">Sunday</th>
                                            <td><input class="btn btn-primary" type="button" value="11:00AM-01:00AM"></td>
                                            
                                            
                                        </tr>
                                    </tbody>
                                </table>  
                            </div>

                        </div>
                    </div>
                </div>

            </div>


        </div>
        <script>
            $("document").root(function(){
                $("#chck").on('click',function(){
                    $("#time2").show();
                });
            });
        </script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
