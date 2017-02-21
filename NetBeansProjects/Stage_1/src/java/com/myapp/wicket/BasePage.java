/*
 * WicketExamplePage.java
 *
 * Created on 7 septembre 2016, 14:14
 */
 
package com.myapp.wicket;           

import org.apache.wicket.markup.html.WebPage;

/** 
 *
 * @author ZEUSCODE
 * @version 
 */

public abstract class BasePage extends WebPage {

    public BasePage() { 
        super(); 
        userModel user = new userModel();
//        add(new HeaderPanel("headerpanel", "Authentifiez vous ")); 
//        add(new FooterPanel("footerpanel", "Copyright - Ucao-uut 2016"));
    } 
    
    public WicketSession getMySession(){
        return (WicketSession)getSession();
    }

}
