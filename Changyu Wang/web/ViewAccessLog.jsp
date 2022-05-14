<%-- 
    Document   : ViewAccessLog
    Created on : 2022-5-14, 17:41:30
    Author     : 王梓峰
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="uts.isd.model.AccessLog"%>
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
        ArrayList<AccessLog> accessLogs = new ArrayList<AccessLog>();
        accessLogs = (ArrayList) session.getAttribute("accessLogs");
    %>
    <body>
        <div class="container">
            <h1>All Access Logs</h1>
            <form action="AccessLogServlet" method="post">
                <input class="Button" type="submit" value="Click here to display All your user log" >
            </form>
            <table>
                <thead>
                    <tr>
                        <th>Log time</th>
                        <th>Log event</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${accessLogs}" var="accessLog">
                        <tr>
                            <td>${accessLog.getEventtime()}</td>
                            <td>${accessLog.getEventlog()}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
