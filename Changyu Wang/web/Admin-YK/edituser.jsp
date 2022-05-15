
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
<div>
<div>
<div>





<%
String email=request.getParameter("email");
UserDao ud=new UserDao();
User UM= new User(); 
UM=ud.searchByEmail(email);
%>

<form action="update.jsp" >                        

    <fieldset class="form-group">
            <label>User Email</label> <input type="text"
                    value= <%=UM.getEmail()%>
                    name="email" >


    <fieldset class="form-group">
            <label>User Name</label> <input type="text"
                    value= <%=UM.getName()%> 
                    name="name" >
    </fieldset>

    <fieldset class="form-group">
            <label>User PassWord</label> <input type="text"
                    value="<%=UM.getPassword()%>"
                    name="password">
    </fieldset>

   <fieldset class="form-group">
            <label>User Gender</label> <input type="text"
                    value="<%=UM.getGender()%>"
                    name="gender">
    </fieldset>
                    
    <fieldset class="form-group">
            <label>User Phonenum</label> <input type="text"
                    value="<%=UM.getPhonenum()%>"
                    name="phonenum">
    </fieldset>

    <fieldset class="form-group">
            <label>User Favoritecolor</label> <input type="text"
                    value="<%=UM.getFavoritecolor()%>"
                    name="favoritecolor">
    </fieldset>
    <button type="submit" class="btn btn-success">Save</button>
    </form>
</div>
</div>
</div>
</body>
</html>
