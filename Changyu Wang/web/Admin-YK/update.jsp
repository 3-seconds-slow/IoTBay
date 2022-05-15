
<%@page import="dao.UserDao"%>
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
            int i;
            for(i=1;i<=14;i++)
                out.println("<br>");
            
            UserDao ud=new UserDao();
            if(ud.updateUser(UM))
              out.println("<font color=green size=7>Record Updated......</font>");
        %>  
        <a href="userlist.jsp" type="button" >User list Page</a>
    </body>
</html>
