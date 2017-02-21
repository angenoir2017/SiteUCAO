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
public class PersonDAO {
    private LdapTemplate ldapTemplate;

    public void setLdapTemplate(LdapTemplate ldapTemplate) {
        this.ldapTemplate = ldapTemplate;
    }
// j'ai refactoré le code sauf pou l'accès des donné pseudo et mot de passe
    // cette methode fait une recherche complete dans l' annuaire ldap selon le uid
    public userModele findByPrimaryKey(String uid) {
        DistinguishedName dn = buildDn(uid);
        return (userModele) ldapTemplate.lookup((javax.naming.Name) dn, new PersonAttributMapper());
    }
    // ici on construit le dn
    private DistinguishedName buildDn(String uid) {
        DistinguishedName dn = new DistinguishedName();
		dn.add("ou", "People");
		dn.add("uid", uid);
		return dn;
    }

    private static class PersonAttributMapper implements AttributesMapper {

        @Override
        public userModele mapFromAttributes(javax.naming.directory.Attributes attrs)
                throws javax.naming.NamingException {
            //ici je cree un utilisateur pour ajouter des infos
            userModele utilisateur = new userModele();
            //ici on dit d'aller chercher le nom il va falloir le changer en pseudo
            //selon l'attribut pseudo enreigistrédans ldap
            utilisateur.setPseudo(attrs.get("givenName").get().toString());
            //ici on dit d'aller chercher le prenom il va falloir le changer en password
            //selon l'attribut ...
            utilisateur.setPass(attrs.get("sn").get().toString());
           
            return utilisateur;
        }
    }
}
