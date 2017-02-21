/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.wicket;

import org.apache.wicket.Session;
import org.apache.wicket.protocol.http.WebSession;
import org.apache.wicket.request.Request;

/**
 *
 * @author ZEUSCODE
 */
public class WicketSession extends WebSession {
    private userModel user;
    
    public WicketSession(Request request) {
        super(request);
    }
    public static WicketSession getInstance(){
    return (WicketSession) Session.get();
    }
    public userModel getUserModel(){
    return user;
    }
    public String getUserName(){
    return user.getPseudo();
    }
    public void setUserModel(userModel userM){
    this.user = userM;
    }
    
}
