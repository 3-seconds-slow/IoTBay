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
        String SQL = "INSERT INTO Group35.AccessLogTable(email, eventtime, logevent) VALUES (?, ?, ?)";
        Date EventDate = new Date();
        Timestamp EventTime = new Timestamp(EventDate.getTime());
        PreparedStatement PS = connection.prepareStatement(SQL);
        PS.setString(1, email);
        PS.setTimestamp(2, EventTime);
        PS.setString(3, logEvent);
        PS.executeUpdate();
        PS.close();
    }
    
    
    public ArrayList<AccessLog> AllLogs(String email) throws SQLException {
        ArrayList<AccessLog> retrievedLogs = new ArrayList<AccessLog>();
        String query = "SELECT * FROM Group35.AccessLogTable WHERE email = ?";
        PreparedStatement PS = connection.prepareStatement(query);
        PS.setString(1, email);
        ResultSet result = PS.executeQuery();        
        
        while (result.next()) {
            int accessLogID = result.getInt(1);
            email = result.getString(2);
            Timestamp time = result.getTimestamp(3);
            String event = result.getString(4);
            retrievedLogs.add(new AccessLog(accessLogID, email, time, event));
        }
        return retrievedLogs;        
    }
    
    public ArrayList<AccessLog> fetchLogsByDate(int id, Timestamp begin, Timestamp end) throws SQLException {
        ArrayList<AccessLog> retrievedLogs = new ArrayList<AccessLog>();
        String query = "SELECT * FROM Group35.AccessLogTable WHERE email = ? AND  LogEventTime>= ? AND LogEventTime <= ?";
        PreparedStatement PS = connection.prepareStatement(query);
        PS.setInt(1, id);
        PS.setTimestamp(2, begin);
        PS.setTimestamp(3, end);
        ResultSet result = PS.executeQuery(); 
        while(result.next()) {
            int accessLogID = result.getInt(1);
            String email = result.getString(2);
            Timestamp time = result.getTimestamp(3);
            String event = result.getString(4);
            retrievedLogs.add(new AccessLog(accessLogID, email, time, event));
        }        
        return retrievedLogs;
    }
       
    public AccessLog FirstLog(int id) throws SQLException {        
        String query = "SELECT * FROM Group35.AccessLogTable WHERE email = ?";
        PreparedStatement PS = connection.prepareStatement(query);
        PS.setInt(1, id);
        ResultSet result = PS.executeQuery();        
        if (result.next()) {
            int accessLogID = result.getInt(1);
            String email = result.getString(2);
            Timestamp time = result.getTimestamp(3);
            String event = result.getString(4);
            PS.close();
            return (new AccessLog(accessLogID, email, time, event));          
        }
        PS.close();
        return null;        
    }
}
