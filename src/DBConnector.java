/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uts.isd.model.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Changyu Wang
 */
public class DBConnector extends DB {

    private Connection DB;
    public DBConnector() throws ClassNotFoundException, SQLException{
        Class.forName(Driver);
        Connection = DriverManager.getConnection(URL+Database,User,Password);
    }
    public Connection OpenConnection(){
        return this.Connection;
    }
    public void CloseConnection() throws SQLException{
        this.Connection.close();
    }
}
