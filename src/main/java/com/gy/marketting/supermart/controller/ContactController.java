package com.gy.marketting.supermart.controller;

import java.security.Principal;
import java.util.Map;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gy.marketting.supermart.entity.User;
import com.gy.marketting.supermart.service.ContactService;

@Controller
public class ContactController {

	@Autowired
	private ContactService contactService;
	
	
	private Logger logger = LoggerFactory.getLogger(ContactController.class) ;

	
	

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addContact(@ModelAttribute("contact")
	User contact, BindingResult result) {

		contactService.addContact(contact);

		return "redirect:/index";
	}

	@RequestMapping("/delete/{contactId}")
	public String deleteContact(@PathVariable("contactId")
	Integer contactId) {

		contactService.removeContact(contactId);

		return "redirect:/index";
	}
}
