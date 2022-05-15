<%@page import="java.util.List"%>
<%@page import="entity.User"%>
<%@page import="dao.UserDao"%>
<html>
<head>
<%! 
List<User> mylist;
%>
<title>User Management Application</title>
</head>
<body>  
<header>  
</header>
 <nav class="navbar navbar-light bg-light">
  <form class="form-inline" >
    <input class="form-control mr-sm-2"
    id="mySearch" type="text" placeholder="search" der="Search" aria-label="Search" >
  </form>
</nav>
    
<div>
    <div>
            <h3>List of Users</h3>
            <hr>
            <div>
            <a href="insertuser.jsp" class="btn btn-success">Add New User</a>
            </div>
            <br>
            <ul >
            <table>
                            <tr>    
                                    <th>Email</th>
                                    <th>Name</th>
                                    <th>PhoneNum</th>
                                    <th>Gender</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                            </tr>
                        <% UserDao  ud= new UserDao();
                           mylist=ud.searchAll();
                            %>
                            <% 
                         for(User S:mylist)
                        {
                         %>      
                   <tr>
                       <td><%=S.getEmail()%></td>  
                       <td><%=S.getName()%></td>  
                       <td><%=S.getPhonenum()%></td>  
                       <td><%=S.getGender()%></td>  
                       <td><a href="edituser.jsp?email=<%=S.getEmail()%>"/>Edit</a>
                       <td><a href="deleteuser.jsp?email=<%=S.getEmail()%>"/>Delete</a>
                  </tr>  
   <%
    } 
  %>     
            </table></ul>
    </div>
</div>
</body>
</html>