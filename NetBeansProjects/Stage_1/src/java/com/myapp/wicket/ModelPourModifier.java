/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.wicket;

import org.apache.wicket.request.mapper.parameter.PageParameters;
import org.apache.wicket.markup.html.WebPage;
import org.apache.wicket.markup.html.basic.Label;
import org.apache.wicket.markup.html.form.Button;
import org.apache.wicket.markup.html.form.Form;
import org.apache.wicket.markup.html.form.PasswordTextField;
import org.apache.wicket.markup.html.form.TextField;
import org.apache.wicket.model.PropertyModel;

/**
 *
 * @author ZEUSCODE
 */
public final class ModelPourModifier extends WebPage {

    public ModelPourModifier() {
        super();
        userModel user =new userModel();
        Form<?> form =new Form("form");
        
        TextField<String> text =new TextField<String>("pseudo_in", new PropertyModel<String>(user, "pseudo"));
        text.setOutputMarkupId(true);
        PasswordTextField pass = new PasswordTextField("password", new PropertyModel<String>(user,"pass"));
        pass.setOutputMarkupId(true);
        PasswordTextField passNv = new PasswordTextField("password_in", new PropertyModel<String>(user,"pass"));
        passNv.setOutputMarkupId(true);
        PasswordTextField passConf = new PasswordTextField("password_in1", new PropertyModel<String>(user,"pass"));
        passConf.setOutputMarkupId(true);
        Button valideBtn = new Button("connexion_bt"){
       @Override
       public void onSubmit() {
           super.onSubmit(); 
           //Ici je veux voir ce que l'utilisateur saisi
          
             System.out.println(pass.getValue());
             System.out.println(user.getPass());
//         if(){
             /*user.getPseudo().equalsIgnoreCase("admin")&& user.getPass().equals("admin")*/
             // WicketSession.getInstance().setUserModel(user);
             //setResponsePage(Acceuil.class);
//         }else{
//             System.out.println("Projet invalide");
//         }
       
       }
        
        };
        
        
       
        add(form);
        form.add(new Label("labelA", "Login:          "));
        form.add(text);
        form.add(new Label("labelB", "Old Password :  "));
        form.add(pass);
        form.add(new Label("labelC", "New Password:  "));
        form.add(passNv);
        form.add(new Label("labelD", "Confirm Password :"));
        form.add(passConf);
        form.add(valideBtn);
//       String nom = getMySession().getUserName();
//        System.out.println(nom);
    }
    
    public ModelPourModifier(PageParameters params) {
        
   
    }

      public WicketSession getMySession(){
return (WicketSession)getSession();
}

}
