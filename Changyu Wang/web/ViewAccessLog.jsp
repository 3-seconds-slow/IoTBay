<%-- 
    Document   : ViewAccessLog
    Created on : 2022-5-10, 17:41:30
    Author     : Changyu Wang
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="uts.isd.model.AccessLog"%>
<%@page import="uts.isd.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="CSS/index.css">
        <link rel="stylesheet" href="CSS/Nav.css">
        <link rel="stylesheet" href="CSS/Footer.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All AccessLog for User:${user.fullname}</title>
    </head>
    <%
        User user = (User) session.getAttribute("user");
        ArrayList<AccessLog> accessLogs = new ArrayList<AccessLog>();
        accessLogs = (ArrayList) session.getAttribute("accessLogs");
    %>
    <body>
        <div class="Nav-Bar">
            <ul>
                <li class="target"><a href="LoginWelcome.jsp">Home</a></li>
                <li class="right" style="float: right"><a onclick="history.back()">Go Back</a></li>
            </ul>
        </div>
        <div class="Content">
            <h1>All Access Logs</h1>
            <form action="AccessLogServlet" method="post">
                <input class="Button" type="submit" value="Click here to display All your user log" >
            </form>
            <table>
                <thead>
                    <tr>
                        <th width="250px" style="border:solid 1px black">Log time</th>
                        <th width="250px" style="border:solid 1px black">Log event</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${accessLogs}" var="accessLog">
                        <tr>
                            <td width="250px" style="border:solid 1px black">${accessLog.getEventtime()}</td>
                            <td style="border:solid 1px black">${accessLog.getEventlog()}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="Footer">
            <p>Copyright 2022 Group 35 All Rights Reserved.</p>
        </div>
    </body>
</html>
