/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author Amir
 */
public class user {
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

     public String getUsername() {
        return username;
    }
     
     
    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

     /**
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
    }
    
    /*public boolean isValid() {
         return valid;
	}

      public void setValid(boolean newValid) {
         valid = newValid;
	}*/	
    
    private String username;
    private String password;
    private String email;
    //public boolean valid;
    
}
