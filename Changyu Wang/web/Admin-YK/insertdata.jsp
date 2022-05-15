<%@page import="dao.UserDao" %>
<jsp:useBean class="entity.User" id="UM">
    <jsp:setProperty property="*" name="UM"></jsp:setProperty>  
</jsp:useBean>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <% 
     UserDao ud=new UserDao();
         if(ud.insertUser(UM)>0)
             out.println("<h5>Record Inserted........</h5>");
    %>
<a href="userlist.jsp" type="button" >User list Page</a>
    </body>
</html>
