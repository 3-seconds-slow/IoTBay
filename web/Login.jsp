<%-- 
    Document   : Login
    Created on : Mar 24, 2022, 11:40:21 AM
    Author     : johnwang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="CSS/Login.css">
        <link rel="stylesheet" href="CSS/Nav.css">
        <link rel="stylesheet" href="CSS/Footer.css">
        <title>Login | IoT Bay Project</title>
    </head>
    <body>
        <div class="Nav-Bar">
            <ul>
                <li class="target"><a href="index.jsp">Home</a></li>
            </ul>
        </div>
        <div class="Content">
            <div class="Login-Welcome-Title">
                <h1>Login to IoTBay</h1>
            </div>
            <div class="Login">
                <form action="Welcome.jsp" method="post">
                    <div class="Login-Form">
                        <table>
                            <tr>
                                <td>Username:</td>
                                <td><input class="UN" name="UserName" type="text" placeholder="Enter your username here" required="true"></td>
                            </tr>
                            <tr>
                                <td>Password</td>
                                <td><input class="PW" name="PassWord" type="password" placeholder="Enter your password here" required="true"></td>
                            </tr>
                        </table>
                    </div>
                    <div class="Button">
                        <input class="Button-Login" type="submit" value="Login" >
                        <input class="Button-Reset" type="reset" value="Reset">
                    </div>
                    <div class="Small-Link">
                        <a class="Register" href="Register.jsp"><span>Don't have an account? Click Here!</span></a>
                    </div>
                    <div class="Small-Link">
                        <a class="Forget" href="Forgetpassword.jsp"><span>Forget Password</span></a>
                    </div>
                </form>
            </div>
            
        </div>
        <div class="Footer">
            <p>Copyright 2022 Group 35 All Rights Reserved.</p>
        </div>
    </body>
</html>