/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package uts.isd.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
 * @author 王梓峰
 */
public class AccessLogSearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        request.getRequestDispatcher("SearchAccessLog.jsp").include(request, response);
    }
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {        
        HttpSession session = request.getSession(); 
        ArrayList<AccessLog> Logs = new ArrayList<AccessLog>();   
        UserDAO userDAO = (UserDAO) session.getAttribute("userDAO");
        AccessLogDAO accessLogDAO = (AccessLogDAO) session.getAttribute("accessLogDAO");
        User user = (User) session.getAttribute("user");
        String start = request.getParameter("startDate");
        String end = request.getParameter("endDate");
        SimpleDateFormat Dateformat = new SimpleDateFormat("yyyy-MM-dd");  
        String email = user.getEmail(); 
        try {
            Date startdate = Dateformat.parse(start);
            Date enddate = Dateformat.parse(end);
            Timestamp TimeStampStart = new Timestamp(startdate.getTime());
            Timestamp TimeStampEnd = new Timestamp(enddate.getTime());
            Logs = accessLogDAO.findUserLogDate(email,TimeStampStart,TimeStampEnd);
            session.setAttribute("searchaccessLogs", Logs);
            request.getRequestDispatcher("SearchAccessLog.jsp").include(request, response);  
        } 
        catch (ParseException | SQLException ex) {
            Logger.getLogger(AccessLogSearchServlet.class.getName()).log(Level.SEVERE, null, ex);
        }            
    }
}
