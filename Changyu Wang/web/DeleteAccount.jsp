<%-- 
    Document   : DeleteAccount
    Created on : 2022-5-10, 20:45:03
    Author     : Changyu Wang
--%>
<%@page import="uts.isd.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="CSS/index.css">
        <link rel="stylesheet" href="CSS/Nav.css">
        <link rel="stylesheet" href="CSS/Footer.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User： ${user.fullname}! Are you sure you want to delete the account?</title>
    </head>
    <%
        User user = (User) session.getAttribute("user");
    %>
    <body>
        <div class="Nav-Bar">
            <ul>
                <li class="target"><a href="index.jsp">Home</a></li>
                <li class="right" style="float: right"><a onclick="history.back()">Go Back</a></li>
            </ul>
        </div>
        <div class="Content">
            <h1>${user.fullname}! Are you sure you want to delete the account?</h1>
            <p>If you want to delete the account click the delete button</p>
            <form action="DeleteServlet" method="post">
                <input class="Button" type="submit" value="Delete Account" >
            </form>
        </div>
        <div class="Footer">
            <p>Copyright 2022 Group 35 All Rights Reserved.</p>
        </div>
    </body>
</html>
