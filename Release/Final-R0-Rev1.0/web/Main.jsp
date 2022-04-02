<%-- 
    Document   : Main
    Created on : Mar 27, 2022, 12:24:40 AM
    Author     : johnwang
--%>
<%@page import="uts.isd.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/Nav.css">
        <link rel="stylesheet" href="CSS/Footer.css">
        <link rel="stylesheet" href="CSS/Main.css">
        <title>Main Page</title>
    </head>
    <% 
        User user = (User)session.getAttribute("user");
    %>
    <body>
        <div class="Nav-Bar">
            <ul>
                <li class="target"><a href="index.jsp">Home</a></li>
                <li class="logout"><a href="Logout.jsp">Logout</a></li>
            </ul>
        </div>
        <div class="Content">
            <div class="User-Profile">
                <h3>User Detail of ${user.firstname} ${user.lastname}'s information:</h3>
                <table>
                    <tr>
                        <th class="Info"><span>Username:</span></th>
                        <th class="Data"><span>${user.username}</span></th>
                    </tr>
                    <tr>
                        <th class="Info"><span>Password:</span></th>
                        <th class="Data"><span>${user.password1}</span></th>
                    </tr>
                    <tr>
                        <th class="Info"><span>Email:</span></th>
                        <th class="Data"><span>${user.email}</span></th>
                    </tr>
                    <tr>
                        <th class="Info"><span>First Name:</span></th>
                        <th class="Data"><span>${user.firstname}</span></th>
                    </tr>
                    <tr>
                        <th class="Info"><span>User Name:</span></th>
                        <th class="Data"><span>${user.lastname}</span></th>
                    </tr>
                    <tr>
                        <th class="Info"><span>Birthday:</span></th>
                        <th class="Data"><span>${user.birthday}</span></th>
                    </tr>
                    <tr>
                        <th class="Info"><span>Address:</span></th>
                        <th class="Data"><span>${user.address}</span></th>
                    </tr>
                    <tr>
                        <th class="Info"><span>Gender:</span></th>
                        <th class="Data"><span>${user.gender}</span></th>
                    </tr>
                    <tr>
                        <th class="Info"><span>Phone number:</span></th>
                        <th class="Data"><span>${user.phonenumber}</span></th>
                    </tr>
                </table>                
            </div>
        </div>
        <div class="Footer">
            <p>Copyright 2022 Group 35 All Rights Reserved.</p>
        </div>
    </body>
</html>
