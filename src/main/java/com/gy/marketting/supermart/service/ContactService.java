package com.gy.marketting.supermart.service;

import java.util.List;

import com.gy.marketting.supermart.entity.User;


public interface ContactService {
	
	public void addContact(User contact);
	public List<User> listContact();
	public void removeContact(Integer id);
}
