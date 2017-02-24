/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.wicket;

import java.io.Serializable;
import java.util.Hashtable;
import javax.naming.Context;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.directory.Attributes;
import javax.naming.directory.BasicAttribute;
import javax.naming.directory.BasicAttributes;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;
import javax.naming.directory.SearchControls;
import javax.naming.directory.SearchResult;

/**
 *
 * @author ZEUSCODE
 */
//usermodel temporel
public class userModel implements Serializable {

    private String pseudo;
    private String pass;
    private String pass2;
    private String nomUtilisateur;
    private String mail;
    private String pays;
    private String description;

    //Fonction pour Comparer et changer la valeur de l'attribue Motdepasse   
    public boolean ComparerMotDePasse(String nomCommun, String unPasse) {
        Hashtable env = new Hashtable();
        env.put(Context.INITIAL_CONTEXT_FACTORY, "com.sun.jndi.ldap.LdapCtxFactory");
        env.put(Context.PROVIDER_URL, "ldap://localhost:389");
        env.put(Context.SECURITY_AUTHENTICATION, "simple");
        env.put(Context.SECURITY_PRINCIPAL, "cn=admin,dc=ldap,dc=com");
        env.put(Context.SECURITY_CREDENTIALS, "ngrtd***");

        DirContext dirContext;

        try {
            dirContext = new InitialDirContext(env);
            Attributes attributes = new BasicAttributes(true);
            Attribute attribut = new BasicAttribute("userPassword");
            attribut.add(unPasse);
            attributes.put(attribut);

            dirContext.modifyAttributes("cn=" + nomCommun + ",ou=People,dc=ldap,dc=com", DirContext.REPLACE_ATTRIBUTE, attributes);
            dirContext.close();
            
        } catch (NamingException e) {
            System.err.println("Erreur lors de l'acces au serveur LDAP" + e);
            e.printStackTrace();

        }
        System.out.println("fin des traitements");
        return true;
    }

    public void AfficherNomUtilisateur() {

      Hashtable env = new Hashtable();
        env.put(Context.INITIAL_CONTEXT_FACTORY,
                "com.sun.jndi.ldap.LdapCtxFactory");
        env.put(Context.PROVIDER_URL, "ldap://localhost:389");
        env.put(Context.SECURITY_AUTHENTICATION, "simple");
        env.put(Context.SECURITY_PRINCIPAL, "cn=admin,dc=ldap,dc=com");
        env.put(Context.SECURITY_CREDENTIALS, "ngrtd***");
        DirContext dirContext;
        try {
            dirContext = new InitialDirContext(env);
            SearchControls searchControls = new SearchControls();
            searchControls.setSearchScope(SearchControls.SUBTREE_SCOPE);
            NamingEnumeration resultat = dirContext.search("ou=People,dc=ldap,dc=com",
                    "(cn=KUEVI Adelin)", searchControls);
            SearchResult sr = (SearchResult) resultat.next();
            while (resultat.hasMore()) {
                
                System.out.println("Description : " + sr.getAttributes().get("cn").get()
                        + ", " + sr.getAttributes().get("cn").get());
               nomUtilisateur = (String) sr.getAttributes().get("cn").get();
                
            }
            dirContext.close();
        } catch (NamingException e) {
            System.err.println("Erreur lors de l'acces au serveur LDAP" + e);
            e.printStackTrace();
        }
    }
    public void AfficherEmailUtilisateur() {

       Hashtable env = new Hashtable();
        env.put(Context.INITIAL_CONTEXT_FACTORY,
                "com.sun.jndi.ldap.LdapCtxFactory");
        env.put(Context.PROVIDER_URL, "ldap://localhost:389");
        env.put(Context.SECURITY_AUTHENTICATION, "simple");
        env.put(Context.SECURITY_PRINCIPAL, "cn=admin,dc=ldap,dc=com");
        env.put(Context.SECURITY_CREDENTIALS, "ngrtd***");
        DirContext dirContext;
        try {
            dirContext = new InitialDirContext(env);
            SearchControls searchControls = new SearchControls();
            searchControls.setSearchScope(SearchControls.SUBTREE_SCOPE);
            NamingEnumeration resultat = dirContext.search("ou=People,dc=ldap,dc=com",
                    "(cn=KUEVI Adelin)", searchControls);
            SearchResult sr = (SearchResult) resultat.next();
            while (resultat.hasMore()) {
                
                System.out.println("Description : " + sr.getAttributes().get("cn").get()
                        + ", " + sr.getAttributes().get("Mail").get());
               mail = (String) sr.getAttributes().get("Mail").get();
                
            }
            dirContext.close();
        } catch (NamingException e) {
            System.err.println("Erreur lors de l'acces au serveur LDAP" + e);
            e.printStackTrace();
        }
    }
    public void AfficherPaysUtilisateur() {

     Hashtable env = new Hashtable();
        env.put(Context.INITIAL_CONTEXT_FACTORY,
                "com.sun.jndi.ldap.LdapCtxFactory");
        env.put(Context.PROVIDER_URL, "ldap://localhost:389");
        env.put(Context.SECURITY_AUTHENTICATION, "simple");
        env.put(Context.SECURITY_PRINCIPAL, "cn=admin,dc=ldap,dc=com");
        env.put(Context.SECURITY_CREDENTIALS, "ngrtd***");
        DirContext dirContext;
        try {
            dirContext = new InitialDirContext(env);
            SearchControls searchControls = new SearchControls();
            searchControls.setSearchScope(SearchControls.SUBTREE_SCOPE);
            NamingEnumeration resultat = dirContext.search("ou=People,dc=ldap,dc=com",
                    "(cn=KUEVI Adelin)", searchControls);
            SearchResult sr = (SearchResult) resultat.next();
            while (resultat.hasMore()) {
                
                System.out.println("Pays : " + sr.getAttributes().get("cn").get()
                        + ", " + sr.getAttributes().get("st").get());
               pays = (String) sr.getAttributes().get("st").get();
                
            }
            dirContext.close();
        } catch (NamingException e) {
            System.err.println("Erreur lors de l'acces au serveur LDAP" + e);
            e.printStackTrace();
        }
    }
    public void AfficherDescriptionUtilisateur() {

        Hashtable env = new Hashtable();
        env.put(Context.INITIAL_CONTEXT_FACTORY,
                "com.sun.jndi.ldap.LdapCtxFactory");
        env.put(Context.PROVIDER_URL, "ldap://localhost:389");
        env.put(Context.SECURITY_AUTHENTICATION, "simple");
        env.put(Context.SECURITY_PRINCIPAL, "cn=admin,dc=ldap,dc=com");
        env.put(Context.SECURITY_CREDENTIALS, "ngrtd***");
        DirContext dirContext;
        try {
            dirContext = new InitialDirContext(env);
            SearchControls searchControls = new SearchControls();
            searchControls.setSearchScope(SearchControls.SUBTREE_SCOPE);
            NamingEnumeration resultat = dirContext.search("ou=People,dc=ldap,dc=com",
                    "(cn=KUEVI Adelin)", searchControls);
            SearchResult sr = (SearchResult) resultat.next();
            while (resultat.hasMore()) {
                
                System.out.println("Description : " + sr.getAttributes().get("cn").get()
                        + ", " + sr.getAttributes().get("description").get());
               description = (String) sr.getAttributes().get("description").get();
                
            }
            dirContext.close();
        } catch (NamingException e) {
            System.err.println("Erreur lors de l'acces au serveur LDAP" + e);
            e.printStackTrace();
        }
         

    }

    public userModel(String pseudo, String pass, String pass2, String nomUtilisateur, String mail, String pays, String description) {
        this.pseudo = pseudo;
        this.pass = pass;
        this.pass2 = pass2;
        this.nomUtilisateur = nomUtilisateur;
        this.mail = mail;
        this.pays = pays;
        this.description = description;
    }
    
    

    public String getPass2() {
        return pass2;
    }

    public void setPass2(String pass2) {
        this.pass2 = pass2;
    }

    public userModel() {
    }

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

    public String getNomUtilisateur() {
        return nomUtilisateur;
    }

    public void setNomUtilisateur(String nomUtilisateur) {
        this.nomUtilisateur = nomUtilisateur;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getPays() {
        return pays;
    }

    public void setPays(String pays) {
        this.pays = pays;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    

}
