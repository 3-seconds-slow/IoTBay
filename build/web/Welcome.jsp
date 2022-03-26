<%-- 
    Document   : Welcome
    Created on : Mar 25, 2022, 8:04:49 PM
    Author     : johnwang
--%>

<%@page import="uts.isd.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="CSS/Welcome.css">
        <link rel="stylesheet" href="CSS/Nav.css">
        <link rel="stylesheet" href="CSS/Footer.css">
        <title>Welcome | IoT Bay Project</title>
    </head>
    <body>
        <div class="Nav-Bar">
            <ul>
                <li class="target"><a href="index.jsp">Home</a></li>
            </ul>
        </div>
        <%
            String Username = request.getParameter("UserName");
            String Password1 = request.getParameter("Password1");
            String Password2 = request.getParameter("Password2");
            String Email = request.getParameter("Email");
            String PhoneNumber = request.getParameter("Phonenumber");
            User user = new User(Username,Email,Password1,Password2,PhoneNumber);
            session.getAttribute("user");
        %>
        <div class="Content">
            <h1>Welcome user <%= Username%>, How are you today.</h1>
            <a href="Main.jsp">Main Page</a>
        </div>
        <div class="Footer">
            <p>Copyright 2022 Group 35 All Rights Reserved.</p>
        </div>
    </body>
</html>
