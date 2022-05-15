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
import uts.isd.model.dao.UserDAO;

/**
 *
 * @author Changyu Wang
 * Just for Client to Register
 */
public class RegisterStaffServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        request.getRequestDispatcher("RegisterClient.jsp").include(request, response);
    } 
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {        
        HttpSession session = request.getSession();
        Validator validator = new Validator();
        Validator.clear(session);
        String name = request.getParameter("fullname").trim();
        String email = request.getParameter("email").trim();
        String phonenumber = request.getParameter("phonenumber").trim(); 
        String password1 = request.getParameter("password1").trim();
        String password2 = request.getParameter("password2").trim();
        String Stufforclient = "staff";
        UserDAO userDAO = (UserDAO) session.getAttribute("userDAO");
        User user = null;
        if(!validator.ValidatorFullName(name)){
            if(!validator.ValidatorEmail(email)){
                if(password2.equals(password1)){
                    try {
                        user = userDAO.findUser(email);
                        System.out.println(user==null);
                        if (user == null) {
                            try{
                                userDAO.addUser(name, email, phonenumber,password1,Stufforclient);
                                request.getRequestDispatcher("RegisterStaffOK.jsp").include(request, response);                
                            } 
                            catch (SQLException ex) {
                                session.setAttribute("ERRMSG", "Error: Can not add to database");
                                request.getRequestDispatcher("RegisterStaff.jsp").include(request, response);
                            }  
                        } 
                        else {
                            session.setAttribute("ERRMSG", "Error: This email already exists in the online system, try another one!");
                            request.getRequestDispatcher("RegisterStaff.jsp").include(request, response);  
                        } 
                    } 
                    catch (SQLException ex) {
                        Logger.getLogger(LoginClientServlet.class.getName()).log(Level.SEVERE, null, ex);
                    }        
                }
                else{
                    session.setAttribute("ERRMSG", "Error:The passwords are not match");
                    request.getRequestDispatcher("RegisterStaff.jsp").include(request, response); 
                }
            }
            else{
                session.setAttribute("ERRMSG", "Error:Email format is wrong");
                request.getRequestDispatcher("RegisterStaff.jsp").include(request, response); 
            }
        }
        else{
            session.setAttribute("ERRMSG", "Error:name format is wrong only can be letters");
            request.getRequestDispatcher("RegisterStaff.jsp").include(request, response);
        }
    }
}
