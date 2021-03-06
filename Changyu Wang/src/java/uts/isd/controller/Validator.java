/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.isd.controller;
import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.http.HttpSession;


    public class Validator implements Serializable{ 

    
    private final String EmailValidator = "([a-zA-Z0-9]+)(([._-])([a-zA-Z0-9]+))*(@)([a-z]+)(.)([a-z]{3})((([.])[a-z]{0,2})*)";      
    private final String FullNameValidator = "([A-Z][a-z]+[\\s])+[A-Z][a-z]*";       
    private final String PasswordValidator = "[a-z0-9]{4,}";         
    private final String DateValidator = "^[0-3]?[0-9]/[0-3]?[0-9]/(?:[0-9]{2})?[0-9]{2}$"; 
    
    public Validator(){ 
        
    }       
    
    public boolean validate(String pattern, String input){       
        Pattern regEx = Pattern.compile(pattern);       
        Matcher match = regEx.matcher(input);       
        return match.matches(); 
    }       
   
    public boolean ValidatorDate(String date){
        return validate(DateValidator,date); 
    }     
   
    public boolean ValidatorEmail(String email){                       
        return validate(EmailValidator,email);   
    } 
       
    public boolean ValidatorFullName(String name){
        System.out.println(validate(FullNameValidator,name));
        return validate(FullNameValidator,name); 
    }       
   
    public boolean ValidatorPassword(String password){
        return validate(PasswordValidator,password); 
    }          
    
    static void clear(HttpSession session) {
        session.setAttribute("ERRMSG", "");
    }
   
}