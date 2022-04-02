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
            String username = request.getParameter("username");
            String password1 = request.getParameter("password1");
            String password2 = request.getParameter("password2");
            String email = request.getParameter("email");
            String firstname  = request.getParameter("firstname");
            String lastname = request.getParameter("lastname");
            String birthday = request.getParameter("birthday");
            String address = request.getParameter("address");
            String gender = request.getParameter("gender");
            String phonenumber = request.getParameter("phonenumber");
            
        %>
         
        <div class="Content">
            <h1>Welcome user <%= username%>, How are you today.</h1>
            <a href="Main.jsp" ><button>Main Page</button></a>
        </div>
            <% 
                User user = new User(username,password1,password2,firstname,lastname,birthday,email,phonenumber,address,gender);
                session.setAttribute("user", user);
            %>
        <div class="Footer">
            <p>Copyright 2022 Group 35 All Rights Reserved.</p>
        </div>
    </body>
</html>
