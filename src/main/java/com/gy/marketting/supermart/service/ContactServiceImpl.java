package com.gy.marketting.supermart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gy.marketting.supermart.dao.ContactDAO;
import com.gy.marketting.supermart.entity.User;


@Service
public class ContactServiceImpl implements ContactService {

	@Autowired
	private ContactDAO contactDAO;
	
	@Transactional
	public void addContact(User contact) {
		contactDAO.addContact(contact);
	}

	@Transactional
	public void updateContact(User contact) {
		contactDAO.updateContact(contact);
	}
	
	@Transactional
	public List<User> listContact() {

		return contactDAO.listContact();
	}

	@Transactional
	public void removeContact(Integer id) {
		contactDAO.removeContact(id);
	}
	
	public User getUserByUsername(String email){
		return contactDAO.getContactByEmail(email);
	}
}
