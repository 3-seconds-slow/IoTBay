<%-- 
    Document   : index
    Created on : Mar 24, 2022, 11:47:02 PM
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
        <title>HomePage | IoT Bay Project</title>
        <%
            User user = (User) session.getAttribute("user");
            String typeErr = (String) session.getAttribute("typeErr");
            String existErr = (String) session.getAttribute("existErr");
        %>
    </head>
    <body>
        <div class="Nav-Bar">
            <ul>
                <li class="target"><a href="index.jsp">Home</a></li>
            </ul>
        </div>
        <div class="Content">
            <h1>Hi User! Welcome to the IoTBay! How are you today?</h1>
            <button><a href="LoginClient.jsp">Login as Client</a></button>
            <button><a href="LoginStaff.jsp">Login as Staff</a></button>
            <button><a href="RegisterClient.jsp">Register as Client</a></button>
            <button><a href="RegisterStaff.jsp">Register as Staff</a></button>
        </div>
        <div class="Footer">
            <p>Copyright 2022 Group 35 All Rights Reserved.</p>
        </div>
        <jsp:include page="/ConnectionServlet" flush="true"/>
    </body>
</html>
