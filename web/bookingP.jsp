<%@page import="java.sql.ResultSet"%>
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
       

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
       
        
        <br/>
        <br/>
        <div class="container">
            <%
                Connection con=ConnectionDb.getConnection();
                PreparedStatement ps = con.prepareStatement("select * from doctor");
                ResultSet rs = ps.executeQuery();
                int i;
                try{
                while(rs.next()){      
                    i = 0;
                %>
            <div class="row">
                <% while(true){ %>
                    <div class="col-md-4">
                        <div class="card" style="width:350px">
                            <img class="card-img-top" src="<% out.print(rs.getString("image")); %>" alt="Card image" style="width:200px; height: 300px; align-self: center;">
                            <div class="card-body">
                                <h4 class="card-title"><% out.print(rs.getString("name")); %></h4>
                                <p class="card-text"><% out.print(rs.getString("specialization")); %></p>
                                <a href="#" class="btn btn-primary">See Profile</a>
                            </div>
                        </div>
                    </div>
                <%  i++;
                    
                    if(i==3)break;
                    else rs.next();
                  }
%>
            </div>
            <br/><br/> 
            <% }
               }catch(Exception e){}%>
        </div>
        
        
    </body>
</html>

    
    
    