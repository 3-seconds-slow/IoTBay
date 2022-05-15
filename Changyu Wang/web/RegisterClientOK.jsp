<%-- 
    Document   : RegisterClientOK
    Created on : 2022-5-10, 10:39:20
    Author     : Changyu Wang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/Nav.css">
        <title>UpdateUserInfoOK</title>
    </head>
    <body>
        <div class="Nav-Bar">
            <ul>
                <li class="right" style="float: right"><a onclick="history.back()">Go Back</a></li>
            </ul>
        </div>       
        <div class="container">
            <h1 class="text-center">Success!</h1>
            <p class="text-center">The account is created in our database</p >
            <p class="text-center">The site will jump in 3 seconds in to login page for client</p >
            <script>
                setTimeout(function(){
                   window.location.href = 'LoginClient.jsp';
                }, 3000);
            </script>
        </div>
    </body>
</html>
