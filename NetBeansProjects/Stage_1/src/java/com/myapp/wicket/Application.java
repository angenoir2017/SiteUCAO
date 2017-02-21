/*
 * Application.java
 *
 * Created on 7 septembre 2016, 14:14
 */
 
package com.myapp.wicket;           

import org.apache.wicket.Session;
import org.apache.wicket.protocol.http.WebApplication;
import org.apache.wicket.request.Request;
import org.apache.wicket.request.Response;
/** 
 *
 * @author ZEUSCODE
 * @version 
 */

public class Application extends WebApplication {

    public Application() {
    }
    
    public Session newSession(Request request, Response response) {
        return new WicketSession(request);
    }

    public Class getHomePage() {
        return Authentification.class;
    }

}
