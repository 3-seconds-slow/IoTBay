<%-- 
    Document   : ViewAccount
    Created on : 2022-5-10, 15:31:18
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
        <title>View Account</title>
    </head>
    <%
        User user = (User) session.getAttribute("user");
    %>
    <body>
        <div class="Nav-Bar">
            <ul>
                <li class="target"><a href="LoginWelcome.jsp">Home</a></li>
                <li class="right" style="float: right"><a onclick="history.back()">Go Back</a></li>
            </ul>
        </div>
        <div class="Content">
            <h1>Hello ${user.fullname}! Here is your account details</h1>
            <table>
                <tr>
                    <td>Fullname:</td>
                    <td>${user.fullname}</td>
                </tr>
                <tr>
                    <td>Email address(Username):</td>
                    <td>${user.email}</td>
                </tr>
                <tr>
                    <td>Phone:</td>
                    <td>${user.phonenumber}</td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>${user.password}</td>
                </tr>
                <tr>
                    <td>Staff</td>
                    <td>${user.stuffornot}</td>
                </tr>
            </table>
        </div>
        <div class="Footer">
            <p>Copyright 2022 Group 35 All Rights Reserved.</p>
        </div>
    </body>
</html>
