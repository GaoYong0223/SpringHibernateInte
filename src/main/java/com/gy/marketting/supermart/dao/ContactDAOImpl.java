package com.gy.marketting.supermart.dao;

import java.util.List;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.gy.marketting.supermart.entity.User;
import com.gy.marketting.supermart.service.UserLoginService;

@Repository
public class ContactDAOImpl implements ContactDAO {

	
	private static final Logger logger = LoggerFactory.getLogger(ContactDAOImpl.class);
	
	@Autowired
	private SessionFactory sessionFactory;

	public void addContact(User contact) {
		sessionFactory.getCurrentSession().save(contact);
	}
	
	public void updateContact(User contact) {
		sessionFactory.getCurrentSession().update(contact);
	}

	public List<User> listContact() {

		return sessionFactory.getCurrentSession().createQuery("from User")
				.list();
	}

	public void removeContact(Integer id) {
		User contact = (User) sessionFactory.getCurrentSession().load(
				User.class, id);
		if (null != contact) {
			sessionFactory.getCurrentSession().delete(contact);
		}

	}
	
	@Transactional
	public User getContactByEmail(String email){
		logger.debug("{} - get contact by email: {}", "getContactByEmail", email);
		try{
			if (email != null && !email.equals("")) {
	            List<User> usr = sessionFactory.getCurrentSession().createQuery("from User where email ='" + email + "'").list();
	           
	            if (usr!=null && usr.size() > 0) {
	            	 logger.debug("users find in list size: {} email: {}", usr.size(), usr.get(0).getEmail());
	                return usr.get(0);
	            } else {
	            	logger.debug("user is null: {}", usr==null);
	                return null;
	            }
	        } else {
	        	logger.debug("email is null");
	            return null;
	        }
		}catch (Exception e){
			logger.error("Error loadming user by email: Exception {}", e);
			return null;
		}

	}
}
