<%-- 
    Document   : show_appointment
    Created on : 17 Dec, 2020, 8:48:54 PM
    Author     : Supriya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                            Show Appointment
                        </div>
                        <div class="card-body"id="user-d">
                            <form>
                                <div class="mb-3 text-center">
                                    <label for="exampleInputEmail1" class="form-label"style="color: white !important;font-weight: bolder !important;">Patient ID</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                    <div id="emailHelp" class="form-text"style="color: white !important;">We'll never share your email with anyone else.</div>
                                </div>
                                <div class="mb-3 text-center">
                                    <label for="exampleInputPassword1" class="form-label"style="color: white !important;font-weight: bolder !important;">Patient Name</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1">
                                </div>
                                <div class="mb-3 form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label"style="color: white !important;" for="exampleCheck1">Check me out</label>
                                </div>

                            </form>
                        </div>
                        <!--user history div-->
                        <div class="card-body"id="user-history">
                            
                        </div>
                        <!--end user history div-->
                        <div class="card-footer text-muted text-center">
                            <button type="submit" class="btn btn-primary mr-2"id="check">Check</button>
                            <button type="submit" class="btn btn-primary mr-2">Edit</button>
                            <button type="submit" class="btn btn-primary"><a href="welcome.jsp"style="color: white;text-decoration:none;">Back</a></button>
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
