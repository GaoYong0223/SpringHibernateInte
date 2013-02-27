package net.viralpatel.contact.service;

import net.viralpatel.contact.dao.ContactDAO;
import net.viralpatel.contact.form.Contact;
import net.viralpatel.contact.form.CustomUser;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class UserLoginService implements UserDetailsService{
	
	@Autowired
	private ContactDAO contactDAO;

	public UserDetails loadUserByUsername(String email)
			throws UsernameNotFoundException, DataAccessException {
		if (email != null && !email.equals("")) {
            Contact user = contactDAO.getContactByEmail(email);
            if (user == null) {
                return null;
            }else{
            	return new CustomUser(user.getId(), user.getEmail(), user.getLastname(),"ROLE_USER");
            }
     
           
        } else {
            return null;
        }

	}
	
	
}
