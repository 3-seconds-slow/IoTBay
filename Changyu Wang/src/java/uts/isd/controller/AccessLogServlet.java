/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.isd.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import uts.isd.model.AccessLog;
import uts.isd.model.User;
import uts.isd.model.dao.AccessLogDAO;
import uts.isd.model.dao.UserDAO;


/**
 *
 * @author Changyu Wang
 */
public class AccessLogServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        request.getRequestDispatcher("ViewAccessLog.jsp").include(request, response);
    }
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {        
        HttpSession session = request.getSession(); 
        ArrayList<AccessLog> AllLogs = new ArrayList<AccessLog>();   
        UserDAO userDAO = (UserDAO) session.getAttribute("userDAO");
        AccessLogDAO accessLogDAO = (AccessLogDAO) session.getAttribute("accessLogDAO");
        User user = (User) session.getAttribute("user");
        String email = user.getEmail(); 
        try {   
            AllLogs = accessLogDAO.UserAllLogs(email);
            session.setAttribute("accessLogs", AllLogs);
            request.getRequestDispatcher("ViewAccessLog.jsp").include(request, response);  
        } 
        catch (NullPointerException | SQLException ex) {
            Logger.getLogger(AccessLogServlet.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Not Working");
        }                              
    }
}