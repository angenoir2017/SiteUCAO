/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.wicket;

import java.io.Serializable;

/**
 *
 * @author ZEUSCODE
 */

//usermodel temporel
public class userModel implements Serializable {
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

    public userModel(String pseudo, String pass) {
        this.pseudo = pseudo;
        this.pass = pass;
    }

    public userModel() {
    }
    
    
}
