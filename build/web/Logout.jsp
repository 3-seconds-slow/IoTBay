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
        <title>Logout </title>
    </head>
    <body>
        <h1>Log out now. Jump back to index in 5s!</h1>
        <% 
            session.invalidate();
        %>
        <script>
         setTimeout(function(){
            window.location.href = 'index.jsp';
         }, 5000);
      </script>
    </body>
</html>
