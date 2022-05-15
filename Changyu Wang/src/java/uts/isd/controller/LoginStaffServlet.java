/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
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
import uts.isd.model.*;
import uts.isd.model.dao.*;


/**
 *
 * @author Changyu Wang
 */
public class LoginStaffServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        request.getRequestDispatcher("login.jsp").include(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        String email = request.getParameter("username").trim();
        String password = request.getParameter("password1").trim();
        UserDAO userDAO = (UserDAO) session.getAttribute("userDAO");
        AccessLogDAO accessLogDAO = (AccessLogDAO) session.getAttribute("accessLogDAO");
        Validator validator = new Validator();
        Validator.clear(session);
        User user = null;    
        if(!validator.ValidatorEmail(email)){   
            try {         
                user = userDAO.findUser(email);
            } 
            catch (SQLException ex) {           
                Logger.getLogger(LoginStaffServlet.class.getName()).log(Level.SEVERE, null, ex);       
            }
            if (user != null) {
                if (user.getPassword().equals(password)) {
                    if("staff".equals(user.getStuffornot())){
                        session.setAttribute("user", user);
                        try {
                            accessLogDAO.addLog(user.getEmail(), "User Logged In");
                        } 
                        catch (SQLException ex) {
                            Logger.getLogger(LoginStaffServlet.class.getName()).log(Level.SEVERE, null, ex);
                        }
                        request.getRequestDispatcher("LoginWelcome.jsp").include(request, response);
                    }
                    else{
                        session.setAttribute("ERRMSG", "Error: You are not Staff Please go to the Client login page");
                        request.getRequestDispatcher("LoginStaff.jsp").include(request, response);
                    }
                }
                else {
                    session.setAttribute("ERRMSG", "Error: Password Wrong");
                    request.getRequestDispatcher("LoginStaff.jsp").include(request, response);
                }                        
            } 
            else {                       
                session.setAttribute("ERRMSG", "Error: The user does not exist in the database");
                request.getRequestDispatcher("LoginStaff.jsp").include(request, response);
            } 
        }
        else{
            session.setAttribute("ERRMSG", "Error: Check your email format");
            request.getRequestDispatcher("LoginStaff.jsp").include(request, response); 
        }  
    }
}