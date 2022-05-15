<%-- 
    Document   : UpdateAccount
    Created on : 2022-5-10, 8:19:17
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
        <title>JSP Page</title>
    </head>
    <body>
        <div class="Nav-Bar">
            <ul>
                <li class="target"><a href="LoginWelcome.jsp">Home</a></li>
                <li class="right" style="float: right"><a onclick="history.back()">Go Back</a></li>
            </ul>
        </div>
        <div class="Content">
            <%
                User user = (User) session.getAttribute("user");
                String ERRMSG = (String) session.getAttribute("ERRMSG");
            %> 
            <h1>Update Your user information</h1>
            <form action="UpdateUserInfoServlet" method="post">
                <table>
                    <tr>
                        <td>Phonenumber:</td>
                        <td><input name="phonenumber" type="text" placeholder="Enter your new phonenumber here" required="ture" style="width: 400px;"></td>
                    </tr>
                    <tr>
                        <td>Fullname:</td>
                        <td><input name="fullname" type="text" placeholder="Enter your new fullname without space here NO CAPS!" required="ture" style="width: 400px;"></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td> <input name="password1" type="password" placeholder="Enter your new password here" required="true" style="width: 400px;"></td>
                    </tr>
                    <tr>
                        <td>Confirm password:</td>
                        <td><input name="password2" type="password" placeholder="Enter your new password again here" required="true" style="width: 400px;"></td>
                    </tr>
                </table>
                <small class="message"><%=(ERRMSG != null ? ERRMSG : "")%></small>
                <div class="Button">
                    <input class="Button-Submit"type="submit" value="Submit">
                    <input class="Button-Reset"type="reset" value="Reset">
                </div>
            </form>
        </div>
        <div class="Footer">
            <p>Copyright 2022 Group 35 All Rights Reserved.</p>
        </div>
    </body>
</html>
