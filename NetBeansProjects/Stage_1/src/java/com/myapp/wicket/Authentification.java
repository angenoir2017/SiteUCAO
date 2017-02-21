/*
 * HomePage.java
 *
 * Created on 7 septembre 2016, 14:14
 */

package com.myapp.wicket; 

import java.text.* ;
import java.util.Date;
import org.apache.wicket.markup.html.basic.Label;
import org.apache.wicket.markup.html.form.Button;
import org.apache.wicket.markup.html.form.Form;
import org.apache.wicket.markup.html.form.PasswordTextField;
import org.apache.wicket.markup.html.form.TextField;
import org.apache.wicket.markup.html.panel.FeedbackPanel;
import org.apache.wicket.model.PropertyModel;
import org.apache.wicket.markup.html.WebPage;

public class Authentification extends WebPage {

    public Authentification() {
        
        userModel user = new userModel();
        Form form =new Form("form");
        String date = DateFormat.getDateInstance().format(new Date());
        String time = DateFormat.getTimeInstance(DateFormat.SHORT).format(new Date());
        info("La page a été ouverte le " + date + " à " + time);
        TextField text =new TextField("pseudo_in", new PropertyModel(user, "pseudo"));
        PasswordTextField pass = new PasswordTextField("password_in", new PropertyModel(user,"pass"));
        add(new FeedbackPanel("feedback"));
        Button valideBtn = new Button("connexion_bt"){
       @Override
       public void onSubmit() {
           super.onSubmit(); 
         if(user.getPseudo().equalsIgnoreCase("admin")&& user.getPass().equals("admin")){
             
             WicketSession.getInstance().setUserModel(user);
             setResponsePage(Profile.class);
             
        }else{
             setResponsePage(Authentification.class);
             
         }
       
       }
            
        };
    
        add(form);
        form.add(text);
        form.add(pass);
        form.add(valideBtn);
       
    }

}
 