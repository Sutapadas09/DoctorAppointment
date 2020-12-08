<%-- 
    Document   : Departments
    Created on : 3 Dec, 2020, 9:19:32 AM
    Author     : Supriya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>

    <head>
        <title>Online Doctor Appointment</title>
        <!--/tags -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="New Clinic Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript">
            addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
            window.scrollTo(0, 1);
            }
        </script>
        <!--//tags -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/appointment_style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/font-awesome.css" rel="stylesheet">
        <!-- //for bootstrap working -->
        <link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,600,600i,700" rel="stylesheet">
    </head>

    <body>
        <%@include file="Header.jsp" %>
        <!-- banner -->
        <div class="banner_inner_content_agile_w3l">

        </div>
        <!--//banner -->
        <!-- departments -->
        <div class="services">
            <div class="container">
                <h3 class="heading-agileinfo">Departments<span>We offer extensive medical procedures to outbound and inbound patients.</span></h3>
                
                <div class="services-top-grids">
                    <div class="col-md-4">
                        <div class="grid1">
                            <i class="fa fa-heartbeat" aria-hidden="true"></i>
                            <h4>Cardiology</h4>
                            <p>Lorem ipsum dolor sit amet, Sed ut perspiciatis unde omnis iste natus error sit voluptatem </p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="grid1">
                            <i class="fa fa-user-md" aria-hidden="true"></i>
                            <h4>Traumotology</h4>
                            <p>Lorem ipsum dolor sit amet, Sed ut perspiciatis unde omnis iste natus error sit voluptatem </p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="grid1">
                            <i class="fa fa-wheelchair-alt" aria-hidden="true"></i>
                            <h4>For disabled</h4>
                            <p>Lorem ipsum dolor sit amet, Sed ut perspiciatis unde omnis iste natus error sit voluptatem </p>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="services-top-grids">
                    <div class="col-md-4">
                        <div class="grid1">
                            <i class="fa fa-medkit" aria-hidden="true"></i>
                            <h4>Pulmonary</h4>
                            <p>Lorem ipsum dolor sit amet, Sed ut perspiciatis unde omnis iste natus error sit voluptatem </p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="grid1">
                            <i class="fa fa-hospital-o" aria-hidden="true"></i>
                            <h4>Gynaecology</h4>
                            <p>Lorem ipsum dolor sit amet, Sed ut perspiciatis unde omnis iste natus error sit voluptatem </p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="grid1">
                            <i class="fa fa-ambulance" aria-hidden="true"></i>
                            <h4>Dental</h4>
                            <p>Lorem ipsum dolor sit amet, Sed ut perspiciatis unde omnis iste natus error sit voluptatem </p>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="services-bottom-grids">
                    <div class="col-md-4">
                        <div class="grid1">
                            <i class="fa fa-plus-square" aria-hidden="true"></i>
                            <h4>X-ray</h4>
                            <p>Lorem ipsum dolor sit amet, Sed ut perspiciatis unde omnis iste natus error sit voluptatem </p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="grid1">
                            <i class="fa fa-stethoscope" aria-hidden="true"></i>
                            <h4>Nephrology</h4>
                            <p>Lorem ipsum dolor sit amet, Sed ut perspiciatis unde omnis iste natus error sit voluptatem </p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="grid1">
                            <i class="fa fa-user-md" aria-hidden="true"></i>
                            <h4>Neurology</h4>
                            <p>Lorem ipsum dolor sit amet, Sed ut perspiciatis unde omnis iste natus error sit voluptatem </p>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!-- //departments -->
        <%@include file="Footer.jsp" %>
        <!-- bootstrap-modal-pop-up -->
        <div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        New Clinic
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                    </div>
                    <div class="modal-body">
                        <img src="images/g7.jpg" alt=" " class="img-responsive" />
                        <p>Ut enim ad minima veniam, quis nostrum 
                            exercitationem ullam corporis suscipit laboriosam, 
                            nisi ut aliquid ex ea commodi consequatur? Quis autem 
                            vel eum iure reprehenderit qui in ea voluptate velit 
                            esse quam nihil molestiae consequatur, vel illum qui 
                            dolorem eum fugiat quo voluptas nulla pariatur.
                            <i>" Quis autem vel eum iure reprehenderit qui in ea voluptate velit 
                                esse quam nihil molestiae consequatur.</i></p>
                    </div>
                </div>
            </div>
        </div>
        <!-- //bootstrap-modal-pop-up --> 
        <!-- js -->
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <script>
            $('ul.dropdown-menu li').hover(function () {
                $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
            }, function () {
                $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
            });
        </script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
    </body>

</html>