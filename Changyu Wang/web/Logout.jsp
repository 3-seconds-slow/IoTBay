<%-- 
    Document   : Logout
    Created on : Mar 27, 2022, 12:13:56 AM
    Author     : johnwang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/Nav.css">
        <link rel="stylesheet" href="CSS/Footer.css">
        <link rel="stylesheet" href="CSS/Logout.css">
        <title>Logout</title>
    </head>
    <body>
        <div class="Nav-Bar">
            <ul>
                <li class="target"><a href="index.jsp">Home</a></li>
            </ul>
        </div>
        <% 
            session.invalidate();
        %>
        <div class="Content">
            <h1>Log out now. Jump back to index in 5s!</h1>
        </div>
        <div class="Footer">
            <p>Copyright 2022 Group 35 All Rights Reserved.</p>
        </div>
        <script>
         setTimeout(function(){
            window.location.href = 'index.jsp';
         }, 5000);
      </script>
    </body>
</html>