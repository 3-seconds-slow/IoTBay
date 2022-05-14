/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.isd.model;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author Changyu Wang
 */
public class AccessLog implements Serializable {
    private String email;
    private Date eventtime;
    private String eventlog;

    public AccessLog(String email, Date eventtime, String eventlog) {
        this.email = email;
        this.eventtime = eventtime;
        this.eventlog = eventlog;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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