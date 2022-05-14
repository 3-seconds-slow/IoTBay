<%-- 
    Document   : ViewAccount
    Created on : 2022-5-14, 15:31:18
    Author     : 王梓峰
--%>

<%@page import="uts.isd.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        User user = (User) session.getAttribute("user");
    %>
    <body>
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
    </body>
</html>
