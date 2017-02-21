/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LdapManager;

import org.springframework.ldap.core.*;


/**
 *
 * @author james
 */
public class Sad {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        ContextSource ldapContextSource = null;
        try {
            ldapContextSource = LdapContextSorceFactory.getLdapContextSource();
        } catch (Exception e) {
            System.out.println("Impossible to get a LdapContextSource.");
            e.printStackTrace();
        }
        LdapTemplate ldapTemplate = new LdapTemplate();
        ldapTemplate.setContextSource(ldapContextSource);
        PersonDAO dao = new PersonDAO();
        dao.setLdapTemplate(ldapTemplate);
        //modifier selon le nom de l'utilisateur dans l'annuaire
        userModele user = dao.findByPrimaryKey("jamla");
        System.out.println("Pseudo: " + user.getPseudo());
        System.out.println("Password: " + user.getPseudo());
        

    }
    
}
