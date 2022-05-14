<%-- 
    Document   : LoginWelcome
    Created on : 2022-5-14, 11:41:48
    Author     : 王梓峰
--%>

<%@page import="uts.isd.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="CSS/Nav.css">
        <link rel="stylesheet" href="CSS/Footer.css">
        <link rel="stylesheet" href="CSS/Main.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User： ${user.fullname}! Welcome to Main Page</title>
        <%
            User user = (User) session.getAttribute("user");
        %>
    </head>
    <body>
        <div class="Nav-Bar">
            <ul>
                <li class="target"><a href="index.jsp">Home</a></li>
            </ul>
        </div>
        <div class="Content">
            <h1>Hello ${user.fullname}!</h1>
            <h3>Choose the listed Option</h3>
            <button><a href="ViewAccount.jsp">View Account Details</a></button>
            <button><a href="UpdateAccount.jsp">Update Account Details</a></button>
            <button><a href="ViewAccessLog.jsp">Check Access Log</a></button>
            <button><a href="SearchAccessLog.jsp">Search Access Log by date</a></button>
            <button><a href="DeleteAccount.jsp">Delete Account</a></button>
            <button><a href="Logout.jsp">Logout</a></button>
        </div>
        <div class="Footer">
            <p>Copyright 2022 Group 35 All Rights Reserved.</p>
        </div>
    </body>
</html>
