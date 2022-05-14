/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.isd.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.Date;
import java.util.ArrayList;
import uts.isd.model.AccessLog;

/**
 *
 * @author Changyu Wang
 * This file is all about AccessLog to the database
 */
public class AccessLogDAO {
    private Statement statement;
    private Connection connection;
    
    public AccessLogDAO (Connection connection) throws SQLException {
        statement = connection.createStatement();
        this.connection = connection;
    }
    
    
    public void addLog(String email, String logEvent) throws SQLException {
        String SQL = "INSERT INTO Group35.ACCESSLOG_TABLE(EMAIL, TIME, EVENT) VALUES (?, ?, ?)";
        Date EventDate = new Date();
        Timestamp EventTime = new Timestamp(EventDate.getTime());
        PreparedStatement PS = connection.prepareStatement(SQL);
        PS.setString(1, email);
        PS.setTimestamp(2, EventTime);
        PS.setString(3, logEvent);
        PS.executeUpdate();
        PS.close();
    }
    
    
    public ArrayList<AccessLog> UserAllLogs(String email) throws SQLException {
        ArrayList<AccessLog> UserLog = new ArrayList<AccessLog>();
        String query = "SELECT * FROM Group35.ACCESSLOG_TABLE WHERE email = ?";
        PreparedStatement PS = connection.prepareStatement(query);
        PS.setString(1, email);
        ResultSet result = PS.executeQuery();
        while (result.next()) {
            email = result.getString(1);
            Timestamp time = result.getTimestamp(2);
            String event = result.getString(3);
            UserLog.add(new AccessLog(email, time, event));
        }
        return UserLog;        
    }
    
    public ArrayList<AccessLog> findUserLogDate(String email,Timestamp begin, Timestamp end) throws SQLException {
        ArrayList<AccessLog> UserLog = new ArrayList<AccessLog>();
        String query = "SELECT * FROM Group35.ACCESSLOG_TABLE WHERE email = ? AND  TIME>= ? AND TIME <= ?";
        PreparedStatement PS = connection.prepareStatement(query);
        PS.setString(1, email);
        PS.setTimestamp(2, begin);
        PS.setTimestamp(3, end);
        ResultSet result = PS.executeQuery(); 
        while(result.next()) {
            email = result.getString(1);
            Timestamp time = result.getTimestamp(2);
            String event = result.getString(3);
            UserLog.add(new AccessLog(email, time, event));
        }        
        return UserLog;
    }
}
