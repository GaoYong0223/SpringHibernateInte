package com.gy.marketting.supermart.dao;

import java.util.List;

import com.gy.marketting.supermart.entity.User;


public interface ContactDAO {
	
	public void addContact(User contact);
	public List<User> listContact();
	public void removeContact(Integer id);
	public User getContactByEmail(String email);
}
