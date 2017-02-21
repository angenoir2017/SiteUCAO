/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LdapManager;

/**
 *
 * @author james
 */
// user model definitif
public class userModele {
    
    
    private String pseudo;
    private String  pass;

    public String getPseudo() {
        return pseudo;
    }

    public void setPseudo(String pseudo) {
        this.pseudo = pseudo;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public userModele(String pseudo, String pass) {
        this.pseudo = pseudo;
        this.pass = pass;
    }

    public userModele() {
    }
    
//     private String uid;
//    private String firstName;
//    private String lastName;
//    private String Email; 
//    
//    //getFirstName
//    public String getFirstName() {
//        return firstName;
//    }
//    //setFirstName
//    public void setFirstName(String firstName) {
//        this.firstName = firstName;
//    }
//    //getLastName
//    public String getLastName() {
//        
//        return lastName;
//    }
//    //setLastName
//    public void setLastName(String lastName) {
//        this.lastName = lastName;
//    }
//    //getUid
//    public String getUid() {
//        return uid;
//    }
//
//    public void setUid(String uid) {
//        this.uid = uid;
//    }
//
//    public String getEmail() {
//        return Email;
//    }
//
//    public void setEmail(String Email) {
//        this.Email = Email;
//    }
}
