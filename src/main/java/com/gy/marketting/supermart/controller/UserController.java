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
import org.springframework.web.bind.annotation.RequestParam;

import com.gy.marketting.supermart.entity.User;
import com.gy.marketting.supermart.service.ContactService;

@Controller
public class UserController {

	@Autowired
	private ContactService contactService;
	
	
	private Logger logger = LoggerFactory.getLogger(UserController.class) ;

	
	

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addContact(@ModelAttribute("contact")
	User contact, BindingResult result) {

		contactService.addContact(contact);

		return "redirect:/index";
	}
	
	
	
	@RequestMapping(value = "/registrationmarketer", method = RequestMethod.POST)
	public String addMarketer(@ModelAttribute("user")
	User contact, BindingResult result, @RequestParam("confirmpassword") String confirmPassword, ModelMap model) {
		logger.debug("CONFIRM PASSWORD: {}", confirmPassword);
		if(confirmPassword==null || !confirmPassword.equals(contact.getPassword())){
			logger.debug("Different user password entered.");
		}
		contact.setRole("MARKETER");
		contactService.addContact(contact);
		
		model.addAttribute("user", contact);
		model.addAttribute("username", contact.getUsername());
		
		return "/pub/registration-marketers-more";
	}
	
	
	@RequestMapping(value = "/registration-talents", method = RequestMethod.POST)
	public String addTalent(@ModelAttribute("user")
	User contact, BindingResult result, @RequestParam("confirmpassword") String confirmPassword, ModelMap model) {
		logger.debug("CONFIRM PASSWORD: {}", confirmPassword);
		if(confirmPassword==null || !confirmPassword.equals(contact.getPassword())){
			logger.debug("Different user password entered.");
		}
		contact.setRole("TALENT");
		contactService.addContact(contact);
		
		model.addAttribute("user", contact);
		model.addAttribute("username", contact.getUsername());
		
		return "/pub/registration-talents-more";
	}
	
	@RequestMapping(value = "/registrationSuccess", method = RequestMethod.POST)
	public String addMarketerStep2(@ModelAttribute("user")
	User contact, BindingResult result, @RequestParam("username") String email, ModelMap model) {
		logger.debug("addMarketerStep2");
		User user = contactService.getUserByUsername(email);
		
		if(user!=null){
			user.setDescription(contact.getDescription());
			user.setResume(contact.getResume());
			contactService.updateContact(user);
		}
		
		
		return "/pub/registration-thankyou";
	}
	
	@RequestMapping("/delete/{contactId}")
	public String deleteContact(@PathVariable("contactId")
	Integer contactId) {

		contactService.removeContact(contactId);

		return "redirect:/index";
	}
}
