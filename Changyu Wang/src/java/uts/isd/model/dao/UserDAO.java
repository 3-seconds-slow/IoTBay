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
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import uts.isd.model.User;

/**
 *
 * @author Changyu Wang
 */
public class UserDAO {
    private Statement statement;
    private Connection connection;
    public UserDAO (Connection connection) throws SQLException {
        statement = connection.createStatement();
        this.connection = connection;
    }
    
    public void addUser(String name, String email, String phonenumber, String password,String stuffornot) throws SQLException {
        String SQL = "INSERT INTO GROUP35.USER_TABLE(FULLNAME, EMAIL, PHONENUMBER, PASSWORD, STAFFORCUSTOMER) VALUES (?, ?, ?, ?, ?)";
        System.out.println(SQL);
        try (PreparedStatement PS = connection.prepareStatement(SQL)) {
            PS.setString(1, name);
            PS.setString(2, email);
            PS.setString(3, phonenumber);
            PS.setString(4, password);
            PS.setString(5, stuffornot);
            PS.executeUpdate();
            PS.close();
            System.out.println("add");
        } 
        catch (SQLException ex) {
            System.out.println(ex);
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public User findUser(String EMAIL) throws SQLException {
        String SQL = "SELECT * FROM GROUP35.USER_TABLE WHERE EMAIL=?";
        PreparedStatement PS = connection.prepareStatement(SQL);
        PS.setString(1, EMAIL);
        ResultSet Result = PS.executeQuery();
        while(Result.next()) {
            String name = Result.getString(1);
            String email = Result.getString(2);
            String phonenumber = Result.getString(3);
            String password = Result.getString(4);            
            String stuffornot = Result.getString(5);
            Result.close();
            return new User(name,email,phonenumber,password,stuffornot);  
        }
        Result.close();
        return null;
    }
    
    public void updateUser(String phonenumber, String fullname, String password, String email) throws SQLException {
        String SQL = "UPDATE Group35.USER_TABLE SET FULLNAME='"+fullname+"',PHONENUMBER ='"+phonenumber+"',PASSWORD='"+password+"'WHERE EMAIL='"+email+"'";
        PreparedStatement PS = connection.prepareStatement(SQL);
        System.out.println(SQL);
        PS.executeUpdate();
        PS.close();
        
        
    }
    
    public void deleteUser(String email) throws SQLException {
        String SQL = "DELETE FROM GROUP35.USER_TABLE WHERE EMAIL=?";
        PreparedStatement PS = connection.prepareStatement(SQL);
        PS.setString(1, email);
        PS.executeUpdate();
        PS.close();
    }
}