<%-- 
    Document   : UpdateAccountOK
    Created on : 2022-5-10, 8:54:30
    Author     : Changyu Wang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update OK</title>
    </head>
    <body>
        <h1>Update OK</h1>
        <p>We will jump in to review account page in 3s</p>
        <script>
            setTimeout(function(){
               window.location.href = 'ViewAccount.jsp';
            }, 3000);
        </script>   
    </body>
</html>
