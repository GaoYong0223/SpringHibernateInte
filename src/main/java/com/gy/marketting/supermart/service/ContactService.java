package com.gy.marketting.supermart.service;

import java.util.List;

import com.gy.marketting.supermart.entity.User;


public interface ContactService {
	
	public void addContact(User contact);
	public void updateContact(User contact);
	public List<User> listContact();
	public void removeContact(Integer id);
	public User getUserByUsername(String email);
}
