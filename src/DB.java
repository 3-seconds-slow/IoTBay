package uts.isd.model.dao;
import java.sql.Connection;
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Changyu Wang
 */

public class DB {
    protected String URL = "jdbc:derby://localhost:1527/";
    protected String Database = "UserData";
    protected String User = "Group35";
    protected String Password = "123456";
    protected String Driver = "org.apache.derby.jdbc.ClientDriver";
    protected Connection Connection;
}
