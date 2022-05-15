
<%@page import="dao.UserDao"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <center>
       <% 
            
              String email;
              email=request.getParameter("email");
              UserDao ud=new UserDao();
                    if(ud.deleteById(email)>0)
                    {
                    out.println("<font color=green size=7>User Deleted........</font>");
                    }
                    else
                    out.println("<font color=red size=7>Record Not Deleted........</font>");
        %> 
        <a href="userlist.jsp" >User list Page</a>
        </center>
    </body>
</html>
