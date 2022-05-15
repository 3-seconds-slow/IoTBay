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
public class DeleteServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {        
        HttpSession session = request.getSession();             
        UserDAO userDAO = (UserDAO) session.getAttribute("userDAO");   
        User user = null;
        user = (User) session.getAttribute("user");
        String email = user.getEmail();  
        if (user == null) {
            session.setAttribute("userExistErr", "Error: User does not exist");
            request.getRequestDispatcher("deleteUser.jsp").include(request, response);
        } 
        else {
            try {
                userDAO.deleteUser(email);
                session.invalidate();
                response.sendRedirect("index.jsp");
            } 
            catch (SQLException ex) {
                Logger.getLogger(DeleteServlet.class.getName()).log(Level.SEVERE, null, ex);
            } 
        }        
    }                 
}
