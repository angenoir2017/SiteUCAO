/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LdapManager;

import org.springframework.ldap.core.*;
import org.springframework.ldap.core.support.LdapContextSource;



/**
 *
 * @author james
 */
public class LdapContextSorceFactory {
    public static ContextSource getLdapContextSource() throws Exception {
		LdapContextSource ldapContextSource = new LdapContextSource();
		ldapContextSource.setUrl("ldap://localhost:389");
		ldapContextSource.setBase("dc=ucao,dc=tg");
		ldapContextSource.afterPropertiesSet();
		return ldapContextSource;
	}
}
