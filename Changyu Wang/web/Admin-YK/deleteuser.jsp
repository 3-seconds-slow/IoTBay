
<%@page import="entity.User"%>
<%@page import="dao.UserDao"%>
<html>
<head>
<title>User Management Application</title>
</head>
<body>

<header>
</header>
<br>
<div >
<div >
<div >
    
<%
String email=request.getParameter("email");
UserDao ud=new UserDao();
User UM= new User(); 
UM=ud.searchByEmail(email);
session.setAttribute("email",email);
%>

<form action="deletefinal.jsp?email=<%=UM.getEmail()%>" >                        



    <fieldset class="form-group">
            <label>User Name</label> <input type="text"
                    value= <%=UM.getName()%> class="form-control"  readonly="true"
                    name="name" required="required">
    </fieldset>

    <fieldset class="form-group">
            <label>User Email</label> <input type="text"
                    value="<%=UM.getEmail()%>" class="form-control"  readonly="true"
                    name="email">
    </fieldset>

    
    </form>
                    <a href="deletefinal.jsp?email=<%=UM.getEmail()%>" >Delete</a>
</div>
</div>
</div>
</body>
</html>
