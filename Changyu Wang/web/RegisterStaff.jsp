<%-- 
    Document   : Register
    Created on : Mar 24, 2022, 11:36:01 PM
    Author     : Changyu Wang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="CSS/Register.css">
        <link rel="stylesheet" href="CSS/Nav.css">
        <link rel="stylesheet" href="CSS/Footer.css">
        <title>Register | IoT Bay Project</title>
    </head>
    <body>
        <div class="Nav-Bar">
            <ul>
                <li class="target"><a href="index.jsp">Home</a></li>
            </ul>
        </div>
        <div class="Content">
            <div class="Login-Welcome-Title">
                <h1>Create an new account as Client at IoTBay</h1>
            </div>
            <div class="Register">
                <form action="RegisterStaffServlet" method="post">
                    <div class="Register-Form">
                        <table>
                            <tr>
                                <td>Full name:</td>
                                <td><input name="fullname" type="text" placeholder="Enter your first name here" required="true"></td>
                            </tr>
                            <tr>
                                <td>Email:</td>
                                <td><input name="email" type="text" placeholder="Enter your email here" required="ture"></td>
                            </tr>
                            <tr>
                                <td>Phone number:</td>
                                <td><input name="phonenumber" type="text" placeholder="Enter your phone number here" required="ture"></td>
                            </tr>
                            <tr>
                                <td>Password:</td>
                                <td> <input name="password1" type="password" placeholder="Enter your password here" required="true"></td>
                            </tr>
                            <tr>
                                <td>Confirm password:</td>
                                <td><input name="password2" type="password" placeholder="Enter your password again here" required="true"></td>
                            </tr>
                        </table>                    
                    </div>
                    <div class="Button">
                        <input class="Button-Submit"type="submit" value="Submit">
                        <input class="Button-Reset"type="reset" value="Reset">
                    </div>
                    <div class="Small-Link">
                        <a class="Login" href="Login.jsp"><span>Already have an account? Click Here!</span></a>
                    </div>

                </form>
            </div>
            
        </div>
        <div class="Footer">
            <p>Copyright 2022 Group 35 All Rights Reserved.</p>
        </div>
    </body>
</html>