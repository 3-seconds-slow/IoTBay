
<%@page import="entity.User"%>
<%@page import="dao.UserDao"%>
<html>
<head>
<title>User Management Application</title>
</head>
<body>
    
<form action="insertdata.jsp">
    <fieldset class="form-group">
            <label>User Email</label> <input type="text"
                    name="email">
    </fieldset>
    
    <fieldset class="form-group">
            <label>User Name</label> <input type="text"
                    name="name" required="required">
    </fieldset>

    <fieldset class="form-group">
            <label>User Password</label> <input type="text"
                    name="password">
    </fieldset>
    
     <fieldset class="form-group">
            <label>User Gender</label> <input type="text"
                    name="gender">
    </fieldset>
    
     <fieldset class="form-group">
            <label>User Phonenum</label> <input type="text"
                    name="phonenum">
    </fieldset>
    
    <fieldset class="form-group">
            <label>User Favoritecolor</label> <input type="text"
                    name="favoritecolor">
    </fieldset>

    <button type="submit" class="btn btn-success">Save</button>
    </form>
</body>
</html>
