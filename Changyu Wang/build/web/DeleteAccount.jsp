<%-- 
    Document   : DeleteAccount
    Created on : 2022-5-14, 20:45:03
    Author     : 王梓峰
--%>
<%@page import="uts.isd.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User： ${user.fullname}! Are you sure you want to delete the account?</title>
    </head>
    <%
        User user = (User) session.getAttribute("user");
    %>
    <body>
        <h1>${user.fullname}! Are you sure you want to delete the account?</h1>
        <p>If you want to delete the account click the delete button</p>
        <form action="DeleteServlet" method="post">
            <input class="Button" type="submit" value="Delete Account" >
        </form>
    </body>
</html>
