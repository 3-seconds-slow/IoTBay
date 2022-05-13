/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.isd.model;

import java.io.Serializable;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Changyu Wang
 */
public class AccessLog implements Serializable {
    private int logid;
    private String username;
    private Date eventtime;
    private String eventlog;

    public AccessLog(int logid, String username, Date eventtime, String eventlog) {
        this.logid = logid;
        this.username = username;
        this.eventtime = eventtime;
        this.eventlog = eventlog;
    }

    public int getLogid() {
        return logid;
    }

    public void setLogid(int logid) {
        this.logid = logid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Date getEventtime() {
        return eventtime;
    }

    public void setEventtime(Date eventtime) {
        this.eventtime = eventtime;
    }

    public String getEventlog() {
        return eventlog;
    }

    public void setEventlog(String eventlog) {
        this.eventlog = eventlog;
    }

    
 
}