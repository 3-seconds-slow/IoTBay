/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package uts.isd.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import uts.isd.model.dao.*;

/**
 *
 * @author Changyu Wang
 */
public class ConnectionServlet extends HttpServlet {
    private DBConnector DB;
    private UserDAO userDAO;
    //private AccessLogDAO accessLogDAO;
    private Connection connection;
        
    @Override 
    public void init() {
        try {
            DB = new DBConnector();
        } 
        catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ConnectionServlet.class.getName()).log(Level.SEVERE, null, ex);
        }      
    }
    
    @Override 
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");       
        HttpSession session = request.getSession();
        connection = DB.OpenConnection();       
        try {
            userDAO = new UserDAO(connection);
            //accessLogDAO = new AccessLogDAO(connection);
        } 
        catch (SQLException ex) {
            Logger.getLogger(ConnectionServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        session.setAttribute("userDAO", userDAO);          
        //session.setAttribute("accessLogDAO", accessLogDAO);
        
    }
    @Override
    public void destroy() {
        try {
            DB.CloseConnection();
        } 
        catch (SQLException ex) {
            Logger.getLogger(ConnectionServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
