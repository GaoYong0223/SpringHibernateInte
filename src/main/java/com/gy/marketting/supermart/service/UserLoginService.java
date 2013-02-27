package com.gy.marketting.supermart.service;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gy.marketting.supermart.dao.ContactDAO;
import com.gy.marketting.supermart.entity.CustomUser;
import com.gy.marketting.supermart.entity.User;

@Service("userLoginService")
public class UserLoginService implements UserDetailsService{
	
	@Autowired
	private ContactDAO contactDAO;
	
	private static final Logger logger = LoggerFactory.getLogger(UserLoginService.class);


	public UserDetails loadUserByUsername(String email)
			throws UsernameNotFoundException, DataAccessException {
		logger.debug("{} - loading user {}", email);
		if (email != null && !email.equals("")) {
            User user = contactDAO.getContactByEmail(email);
            if (user == null) {
            	logger.debug("user is null");
                return null;
            }else{
            	return new CustomUser(user.getId(), user.getEmail(), user.getPassword(), user.getRole());
            }
        } else {
        	logger.debug("email is null");
            return null;
        }

	}
	
	
}
