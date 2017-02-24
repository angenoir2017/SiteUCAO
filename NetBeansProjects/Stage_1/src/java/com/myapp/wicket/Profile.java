/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.wicket;
import org.apache.wicket.markup.html.basic.Label;
import org.apache.wicket.markup.html.form.Button;
import org.apache.wicket.markup.html.form.Form;
import org.apache.wicket.markup.html.form.PasswordTextField;
import org.apache.wicket.markup.html.form.TextField;
import org.apache.wicket.model.PropertyModel;

/**
 *
 * @author agenoir
 */
public final class Profile extends BasePage {
 
      String motDePasse1;
      String motDePasse2;
      String nomCommun;
    public Profile() {
        super();
      
        
        userModel user =new userModel();
        Form<?> form =new Form("form");
        
        TextField<String> text =new TextField<String>("pseudo_in", new PropertyModel<String>(user, "pseudo"));
        text.setOutputMarkupId(true);
        PasswordTextField pass = new PasswordTextField("password", new PropertyModel<String>(user,"pass"));
        pass.setOutputMarkupId(true);
        PasswordTextField passNv = new PasswordTextField("password_in", new PropertyModel<String>(user,"pass2"));
        passNv.setOutputMarkupId(true);
        PasswordTextField passConf = new PasswordTextField("password_in1", new PropertyModel<String>(user,"pass2"));
        passConf.setOutputMarkupId(true);
        
                 
        Button valideBtn = new Button("connexion_bt"){
       @Override
       public void onSubmit() {
           super.onSubmit(); 
           //Ici je veux voir ce que l'utilisateur saisi
           nomCommun = user.getPseudo();
         motDePasse1 = user.getPass();
         motDePasse2 = user.getPass2();
           System.out.println(nomCommun);
           System.out.println(motDePasse1);
           System.out.println(motDePasse2);
            if(motDePasse2==motDePasse2){
                
               user.ComparerMotDePasse(nomCommun , motDePasse2);
                
            }else{
                System.out.println("Mot de passe de confirmation erroné");
            }
          
//             System.out.println(pass.getValue());
//             System.out.println(user.getPass());

       
       }
        
        };
        
        user.AfficherNomUtilisateur();
       add(new Label("nomUtilisateur",new PropertyModel<String>(user,"nomUtilisateur")));
       user.AfficherEmailUtilisateur();
       add(new Label("mail",new PropertyModel<String>(user,"mail")));
       user.AfficherDescriptionUtilisateur();
       add(new Label("description",new PropertyModel<String>(user,"description")));
       user.AfficherPaysUtilisateur();
       add(new Label("pays",new PropertyModel<String>(user,"pays")));
       //add(new Label("numero",new PropertyModel<String>(user,"")));
        add(form);
        form.add(new Label("labelA", "Nom commun:          "));
        form.add(text);
        form.add(new Label("labelB", "Ancien Password :  "));
        form.add(pass);
        form.add(new Label("labelC", "Nouveau Password:  "));
        form.add(passNv);
        form.add(new Label("labelD", "Confirmez Password :"));
        form.add(passConf);
        form.add(valideBtn);

    }
       
}
