
package uts.isd.model;

import java.io.Serializable;

/**
 *
 * @author Changyu Wang
 */
public class User implements Serializable {
    private String fullname;
    private String email;
    private String phonenumber;
    private String password;
    private String stuffornot;

    public User(String fullname, String email, String phonenumber, String password, String stuffornot) {
        this.fullname = fullname;
        this.email = email;
        this.phonenumber = phonenumber;
        this.password = password;
        this.stuffornot = stuffornot;
    }

    public void updateInfo(String fullname, String email, String phonenumber, String password, String stuffornot) {
        this.fullname = fullname;
        this.email = email;
        this.phonenumber = phonenumber; 
        this.password = password;
        this.stuffornot = stuffornot;
    }
    
    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getStuffornot() {
        return stuffornot;
    }

    public void setStuffornot(String stuffornot) {
        this.stuffornot = stuffornot;
    }
       
}