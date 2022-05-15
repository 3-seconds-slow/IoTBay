<%-- 
    Document   : SearchAccessLog
    Created on : 2022-5-10, 17:41:21
    Author     : Changyu Wang
--%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="uts.isd.model.AccessLog"%>
<%@page import="uts.isd.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="CSS/Register.css">
        <link rel="stylesheet" href="CSS/Nav.css">
        <link rel="stylesheet" href="CSS/Footer.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search AccessLog</title>
    </head>
    <%
            User user = (User) session.getAttribute("user");
            String timeFilterErr = (String) session.getAttribute("timeFilterErr");            
            String dateParseError = (String) session.getAttribute("dateParseError"); 
            String filterErr = (String) session.getAttribute("filterErr");
            String filterText = (String) session.getAttribute("filterText");
            ArrayList<AccessLog> searchaccessLogs = new ArrayList<AccessLog>();
            searchaccessLogs = (ArrayList) session.getAttribute("searchaccessLogs");
            Date date = new Date();
            Timestamp time = new Timestamp(date.getTime());
        %>
    <body>
        <div class="Nav-Bar">
            <ul>
                <li class="target"><a href="LoginWelcome.jsp">Home</a></li>
                <li class="right" style="float: right"><a onclick="history.back()">Go Back</a></li>
            </ul>
        </div>
        <div class="Content">
            <h1>Search Access Logs by dates</h1>
            <p>IMPORTANT:When user enter the end date. Please select the date that +1 day in the end date selecter. For example if you want to search date between may of 1st to may 16th,then selected may 1st for starting day and end day select 17th of may. This is cause by the Timestamp function start at 0:00. Sorry!</p>
            <form method="post" action="AccessLogSearchServlet">
                <div>
                    <div>
                        <h1>Start date:</h1><input type="date" name="startDate" required="true">
                        <h1>End date:</h1><input type="date" name="endDate" required="true">
                        <button type="submit">Search</button>
                    </div>                    
                </div>                                                               
            </form>
            <table>
                <thead>
                    <tr>
                        <th>Log time</th>
                        <th>Log event</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${searchaccessLogs}" var="accessLog">
                        <tr>
                            <td width="250px" style="border:solid 1px black">${accessLog.getEventtime()}</td>
                            <td width="250px" style="border:solid 1px black">${accessLog.getEventlog()}</td>
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
