/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package uts.isd.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import uts.isd.model.User;
import uts.isd.model.dao.UserDAO;

/**
 *
 * @author 王梓峰
 */
public class UpdateUserInfoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        request.getRequestDispatcher("UpdateAccount.jsp").include(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {        
        HttpSession session = request.getSession();        
        String fullname = request.getParameter("fullname").trim();
        String password1 = request.getParameter("password1").trim();
        String password2 = request.getParameter("password2").trim();
        String phonenumber = request.getParameter("phonenumber").trim();
        UserDAO userDAO = (UserDAO) session.getAttribute("userDAO");
        User TargetUser = (User) session.getAttribute("user");
        String email = TargetUser.getEmail();
        Validator validator = new Validator();
        Validator.clear(session);
        User user = null;
        if(!validator.ValidatorFullName(fullname)){
            if(password2.equals(password1)){
                try {
                    user = userDAO.findUser(email);
                    try{
                        userDAO.updateUser(phonenumber,fullname,password1,email);
                        User updatedUser = userDAO.findUser(email);
                        session.setAttribute("user", updatedUser);
                        request.getRequestDispatcher("UpdateAccountOK.jsp").include(request, response);
                    }
                    catch (SQLException ex) {
                        session.setAttribute("ERRMSG", "Error: User was not updated successfully");
                        request.getRequestDispatcher("UpdateAccount.jsp").include(request, response);
                    }
                } 
                catch (SQLException ex) {
                    Logger.getLogger(UpdateUserInfoServlet.class.getName()).log(Level.SEVERE, null, ex);
                }    
            }
            else{
                session.setAttribute("ERRMSG", "Error:The passwords are not match");
                request.getRequestDispatcher("UpdateAccount.jsp").include(request, response); 
            }
        }
        else{
            session.setAttribute("ERRMSG", "Error:name format is wrong only can be letters");
            request.getRequestDispatcher("UpdateAccount.jsp").include(request, response);
        }
    }
}
