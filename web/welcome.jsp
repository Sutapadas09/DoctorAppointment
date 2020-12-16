<%-- 
    Document   : welcome
    Created on : 16 Dec, 2020, 4:39:49 PM
    Author     : gagan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            HttpSession ses = request.getSession(false);
            String t = ses.getAttribute("type").toString();
            if(t!=null){
                if(t.equals("patient")){
                    response.sendRedirect("welcomeP.html");
                }else if(t.equals("doctor")){
                    response.sendRedirect("welcomeD.html");
                }else{
                    response.sendRedirect("welcomeC.html");
                }
            }
            else{
                response.sendRedirect("login.html");
            }
        %>
    </body>
</html>
